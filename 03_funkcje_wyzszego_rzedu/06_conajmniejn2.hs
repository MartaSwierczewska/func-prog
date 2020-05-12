import Data.List

conajmniejn2 ::[Int] -> Int -> [Int]

conajmniejn2 list min = map head $ filter (\list -> length list >= min) $ groupBy (==) $ sortBy (flip compare) list



