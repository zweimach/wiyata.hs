module Codility.BinaryGap where

import Data.Char (intToDigit)
import Data.List (dropWhileEnd, genericLength)
import Data.Text (pack, strip, unpack)
import Numeric (showIntAtBase)

binaryGap :: Integer -> Integer
binaryGap n
    | isGapped = maximum $ map genericLength zeros
    | otherwise = 0
  where
    countAdj [] = 0
    countAdj [_] = 0
    countAdj (x : y : xs) =
        let check = (x == '1' && y == '0') || (x == '0' && y == '1')
            rest = countAdj (y : xs)
         in if check then 1 + rest else rest
    removeOne x = if x == '1' then ' ' else x
    trim = unpack . strip . pack
    bins = dropWhileEnd (== '0') $ showIntAtBase 2 intToDigit n ""
    zeros = words $ trim $ map removeOne bins
    isGapped = countAdj bins > 1
