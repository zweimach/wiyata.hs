module HackerRank.RepeatedString where

import Data.List (genericLength, genericTake)

repeatedString :: String -> Integer -> Integer
repeatedString s n
    | all (== 'a') s = n
    | genLen < n = countA s * divA + countA (genericTake remA s)
    | otherwise = countA firstN
  where
    countA xs = genericLength $ filter (== 'a') xs
    firstN = genericTake n $ cycle s
    genLen = genericLength s
    remA = mod n $ genericLength s
    divA = div n $ genericLength s
