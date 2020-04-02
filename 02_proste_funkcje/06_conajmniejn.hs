{-
Zdefiniuj funkcję conajmniejn, która zostawia w liście elementy, które występuje co najmniej określoną liczbę razy
Podpowiedzi:
* przydatna może okazać się pomocnicza funkcja, która zlicza liczbę wystąpień danego elementu w liście
* przydatna może okazać się pomocnicza funkcja, która usuwa wszystkie wystąpienia danego elementu w liście
* w ramach optymalizacji obie te pomocnicze funkcje można zaimplementować w postaci jednej funkcji
-}

count:: Eq a => a -> [a] -> Int
count n [] = 0
count n (h:t) | n == h = 1 + count n t
              | otherwise = count n t

conajmniejn :: (Eq a) => [a] -> Int -> [a]
conajmniejn list n = filter (\b-> count b list >= n) list 
