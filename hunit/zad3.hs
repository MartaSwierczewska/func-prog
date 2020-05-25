import Test.HUnit

data Tree a = Empty | Node a (Tree a) (Tree a) deriving (Show, Eq)

myTree :: Tree Int
myTree = Node 3 (Node 1 Empty (Node 2 Empty Empty)) (Node 4 Empty Empty)


testlist = TestList ["remove" ~: remove myTree 4 ~?= Node 3 (Node 1 Empty (Node 2 Empty Empty)) Empty,
		"empty" ~: empty myTree @? "False",
		"search" ~: search myTree 3 @? "True",
		"nnodes" ~: nnodes myTree ~?= 4,
		"toString" ~: toString myTree ~?= "3(1(,2),4)",
		"leaves" ~: leaves myTree ~?= [2,4],
		"nsum" ~: nsum myTree ~?= 10
		]

main = do
	runTestTT testlist
    	return () 


--insert (wstawienie elementu)
insert :: (Ord a) => Tree a -> a -> Tree a
insert Empty x = Node x Empty Empty
insert (Node v t1 t2) x 
        | v == x = Node v t1 t2
        | v < x = Node v t1 (insert t2 x)
        | v > x = Node v (insert t1 x) t2

--empty (sprawdzanie czy drzewo jest puste)
empty :: (Ord a) => Tree a -> Bool
empty Empty = True
empty _ = False

--search (sprawdzanie czy element jest w drzewie) 
search :: (Ord a) => (Tree a) -> a -> Bool
search Empty _ = False
search (Node v t1 t2) x 
        | x == v = True
        | x < v = search t1 x 
        | x > v = search t2 x

--toString (wypisującą drzewo w postaci „a(b(d,e),c(,f(g,)))” )
toString :: (Show a) => Tree a -> [Char]
toString Empty = []
toString (Node r Empty Empty) = show r
toString (Node r t1 t2) = show r ++ ['('] ++ toString t1 ++ [','] ++ toString t2 ++ [')']

--leaves (zwracającą listę liści)
leaves :: (Ord a) => Tree a -> [a]
leaves Empty = []
leaves (Node r Empty Empty) = [r]-- +1 line
leaves (Node r t1 t2) = leaves t1 ++ leaves t2


--nnodes (podającą ilość węzłów)
nnodes :: (Ord a) => Tree a -> Int
nnodes Empty = 0
nnodes (Node r t1 t2) = 1 + nnodes t1 + nnodes t2

--nsum (zliczającą sumę wartości w węzłach)
nsum :: (Num a) => (Tree a) -> a
nsum Empty = 0
nsum (Node r t1 t2) = r + nsum t1 + nsum t2

--remove (usuwanie elementu)
insert' :: (Ord a) => Tree a -> Tree a -> Tree a
insert' x Empty = x
insert' Empty x = x
insert' (Node v t1 t2) (Node x x1 x2) 
        | v == x = Node v t1 t2
        | v < x = Node v t1 (insert' t2 (Node x x1 x2))
        | v > x = Node v (insert' t1 (Node x x1 x2)) t2


remove :: (Ord a) => (Tree a) -> a -> (Tree a)
remove (Node v t1 t2) x
        | v < x = Node v t1 (remove t2 x)
        | v > x = Node v (remove t1 x) t2
remove (Node v Empty t2) x= t2
remove (Node v t1 Empty) x= t1
remove (Node v t1 t2) x= insert' t1 t2
remove Empty _ = Empty


