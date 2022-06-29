module OpenKattis.FreeFood where

import Data.Containers.ListUtils (nubOrd)

freeFood :: [(Int, Int)] -> Int
freeFood = length . nubOrd . concatMap (\(s, e) -> [s .. e])
