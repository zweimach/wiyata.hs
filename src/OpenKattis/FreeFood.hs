module OpenKattis.FreeFood where

import Data.List (nub)

freeFood :: [(Int, Int)] -> Int
freeFood [] = 0
freeFood xs = length $ nub $ concat lists
  where
    lists = map (\(s, e) -> [s .. e]) xs
