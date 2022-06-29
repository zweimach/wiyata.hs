module Codeforces.Reorder where

reorder :: [Int] -> Int -> String
reorder a m
    | sum a == m = "YES"
    | otherwise = "NO"
