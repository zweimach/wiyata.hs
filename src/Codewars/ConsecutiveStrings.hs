module Codewars.ConsecutiveStrings where

import Data.List (maximumBy)

longestConsec :: [String] -> Int -> String
longestConsec s k = maximumBy compareLength $ zipWithN s s k
  where
    compareLength s1 s2
        | length s1 < length s2 = LT
        | length s1 > length s2 = GT
        | otherwise = GT
    zipWithN _ _ 0 = [""]
    zipWithN _ [] _ = [""]
    zipWithN str _ 1 = str
    zipWithN str (_ : xs) n = zipWithN (zipWith (++) str xs) xs (n - 1)
