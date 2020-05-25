-- Dwa pierwsze  zadania mają znaleźć się w tym pliku
-- 1. Implementacja Functora dla drzewa
-- 2. Implementacja Monady dla drzewa
-- Dodatkowo można tu zrealizować dodatkowe zadanie 4.

data Tree a = Empty | Leaf a | Node (Tree a) (Tree a)