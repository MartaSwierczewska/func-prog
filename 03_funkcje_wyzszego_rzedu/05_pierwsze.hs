is_prime :: Int -> Bool
is_prime 1 = False
is_prime 2 = True
is_prime n 
            | n<=0 = False
            | (length [x | x <- [2 .. n-1], mod n x == 0]) > 0 = False
		    | otherwise = True

pierwsze :: [Int] -> [Int]
-- funkcja znajdująca w podanej liście wszystkie liczby pierwsze
pierwsze lista = filter is_prime lista

