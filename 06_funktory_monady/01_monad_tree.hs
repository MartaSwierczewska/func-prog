-- Dwa pierwsze  zadania mają znaleźć się w tym pliku
-- 1. Implementacja Functora dla drzewa
-- 2. Implementacja Monady dla drzewa
-- Dodatkowo można tu zrealizować dodatkowe zadanie 4.

data Tree a = Empty | Leaf a | Node (Tree a) (Tree a)

instance Functor Tree where
 fmap f Empty = Empty
 fmap f (Leaf x) = Leaf (f x)
 fmap f (Node x y) = Node (fmap f x) (fmap f y)

instance Monad Tree where
 return = Leaf
 Empty >>= f = Empty 
 Leaf a >>= f = f a
 Node a b >>= f = Node (a >>= f) (b >>= f)
