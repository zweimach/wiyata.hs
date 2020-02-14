module OpenKattis.ToLower where

import Control.Monad
import Data.Char
import Data.Function
import Data.List

toLower' :: [[String]] -> Int
toLower' xs = length $ filter id lowerList
  where
    canBeLower s = all isLower s || all isLower (tail s)
    lowerList = map canBeLower <$> xs & map and
