{-
Napisz funkcję usunduplikaty, która usunie ze stringa powtarzające się znaki.
Podpowiedzi:
* string to lista
* przydatna może być funkcja usuwająca wszystkiego wystąpienia danego elementu z listy

PS zamiast 
    "usunduplikaty :: [Char] -> [Char]" 
mogłoby być 
    "usunduplikaty :: (Eq a) => [a] -> [a]"
Funkcja byłaby wtedy bardziej uniwersalna
-}

usunduplikaty :: Eq a => [a] -> [a]

usunduplikaty [] = []
usunduplikaty (x:xs) = x : usunduplikaty (filter (/=x) xs)
