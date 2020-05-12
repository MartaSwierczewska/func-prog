data Tree a = Empty | Node a (Tree a) (Tree a) deriving (Show, Eq)
a::Tree Int
a= Node 9 Empty Empty
b :: Tree Int
b=  Node 7 (Node 5 Empty Empty)(Node 8 Empty Empty)
myTree :: Tree Int
myTree = Node 3 (Node 1 Empty (Node 2 Empty Empty)) (Node 4 Empty Empty)

insert :: (Ord a) => a -> Tree a -> Tree a  
insert x Empty = Node x Empty Empty 
insert x (Node a left right)   
    | x == a = Node x left right  
    | x < a  = Node a (insert x left) right  
    | x > a  = Node a left (insert x right)

empty :: Tree a -> Bool
empty Empty = True 
empty (Node a left right) = False

--wstawienie elementu
insert :: (Ord a) => Tree a -> a -> Tree a
insert Empty x = Node x Empty Empty
insert (Node v t1 t2) x 
        | v == x = Node v t1 t2
        | v < x = Node v t1 (insert t2 x)
        | v > x = Node v (insert t1 x) t2

--sprawdzanie czy drzewo jest puste
empty :: (Ord a) => Tree a -> Bool
empty Empty = True
empty _ = False

--sprawdzanie czy element jest w drzewie
search :: (Ord a) => (Tree a) -> a -> Bool
search Empty _ = False
search (Node v t1 t2) x 
        | x == v = True
        | x < v = search t1 x 
        | x > v = search t2 x

--wypisanie liści drzewa
toString :: (Show a) => Tree a -> [Char]
toString Empty = []
toString (Node r Empty Empty) = show r
toString (Node r t1 t2) = show r ++ ['('] ++ toString t1 ++ [','] ++ toString t2 ++ [')']

--zwracanie listy liści
leaves :: (Ord a) => Tree a -> [a]
leaves Empty = []
leaves (Node r Empty Empty) = [r]-- +1 line
leaves (Node r t1 t2) = leaves t1 ++ leaves t2


--podanie ilości węzłów
nnodes :: (Ord a) => Tree a -> Int
nnodes Empty = 0
nnodes (Node r t1 t2) = 1 + nnodes t1 + nnodes t2

--zliczanie sumy wartości w węzłach
nsum :: (Num a) => (Tree a) -> a
nsum Empty = 0
nsum (Node r t1 t2) = r + nsum t1 + nsum t2

--usuwanie elementu
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