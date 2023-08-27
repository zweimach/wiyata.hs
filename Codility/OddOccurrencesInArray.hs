module Codility.OddOccurrencesInArray (oddOccurrencesInArray) where

import qualified Data.Map as Map

oddOccurrencesInArray :: (Ord a) => [a] -> a
oddOccurrencesInArray = fst . head . filter ((== 1) . snd) . go Map.empty
  where
    go acc [] = Map.toList acc
    go acc (y : ys) = go (Map.insertWith (+) y 1 acc) ys
