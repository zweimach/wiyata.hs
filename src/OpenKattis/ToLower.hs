module OpenKattis.ToLower where

import Data.Char (isLower)
import Data.Function ((&))

toLower' :: [[String]] -> Int
toLower' xs = length $ filter id lowerList
  where
    canBeLower s = all isLower s || all isLower (tail s)
    lowerList = map canBeLower <$> xs & map and
