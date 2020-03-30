{-
Napisz dwie wersje funkcji bakteria (Druga może nazywać się bakteria') o poniższym typie. 
Szczegółowe instrukcje na wiki.
-}
bakteria :: Int -> (Int, Int)
bakteria 0 = (1,1)
bakteria n = (snd(bakteria(n-1)), 2 * (fst(bakteria(n-1))) + (snd(bakteria(n-1))))

bakteria' :: Int -> (Int, Int)
bakteria' 0 = (2,0)
bakteria' n ((snd(bakteria(n-1)), 2 * (fst(bakteria(n-1))) + (snd(bakteria(n-1))))
 