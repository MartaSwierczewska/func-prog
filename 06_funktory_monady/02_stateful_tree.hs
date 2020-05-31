-- Tutaj ma się znaleźć zadanie numer 3. 
-- Trzy operacje oparte o monadę State
-- 1. insert
-- 2. search
-- 3. remove
-- Proszę dopisać w Main jakiś przykład użycia operacji w notacji `do`

data Tree a = Empty | Node a (Tree a) (Tree a)
