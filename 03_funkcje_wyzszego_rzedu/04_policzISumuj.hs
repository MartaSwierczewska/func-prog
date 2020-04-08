policzISumuj :: (Int -> Int) -> Int -> Int -> Int
-- policzISumuj przyjmuje trzy argumenty: 
-- * funkcję, którą ma zaaplikować do każdego z elementów listy 
-- * pierwszy i ostatni element zakresu dla którego ma zostać zastosowana 
-- W wyniku funkcja zwraca sumę wyników zaaplikowania funkcji do każdego z elementów.

policzISumuj f start end = sum $ map f lista
            where lista = [start..end]
