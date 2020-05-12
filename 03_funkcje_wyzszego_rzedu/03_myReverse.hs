-- funkcja odwracająca listę z wykorzystaniem foldl
-- TIP: użyj lambdy lub funkcji flip (https://hackage.haskell.org/package/base-4.12.0.0/docs/Prelude.html#v:flip)
myReverse :: String -> String
myReverse s = foldr (\x xs -> xs ++ [x]) [] s
