{-
Zdefiniuj funkcję supercyfra zgodnie z instrukcjami
Podpowiedzi:
* `div` i `mod` mogą się przydać
* podwójna rekurencja!  
-}
supercyfra :: Int -> Int

digs :: Integral x => x -> [x]
digs 0 = []
digs x = digs (x `div` 10) ++ [x `mod` 10]

supercyfra a
	| a<10 = a
	| otherwise = supercyfra b
		where b = sum (digs a)  