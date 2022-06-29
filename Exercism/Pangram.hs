module Exercism.Pangram where

import Data.Char (toLower)
import qualified Data.Map as Map

isPangram :: String -> Bool
isPangram = go (Map.fromList $ zip ['a' .. 'z'] $ repeat 0)
  where
    go acc [] = all (> 0) acc
    go acc (x : xs)
        | Map.member (toLower x) acc = go (Map.insertWith (+) (toLower x) 1 acc) xs
        | otherwise = go acc xs
