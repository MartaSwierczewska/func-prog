--myTree :: Tree Int
--myTree = Node 3 (Node 1 Empty (Node 2 Empty Empty)) (Node 4 Empty Empty)
data Tree a = Empty | Node a (Tree a) (Tree a) deriving (Show, Read, Eq)
insert :: (Ord a) => a -> Tree a -> Tree a  
insert x Empty = Node x Empty Empty 
insert x (Node a left right)   
    | x == a = Node x left right  
    | x < a  = Node a (insert x left) right  
    | x > a  = Node a left (insert x right)

empty :: Tree a -> Bool
empty Empty = True 
empty (Node a left right) = False
