module Codility.OddOccurrencesInArray where

import qualified Data.Map as M

oddOccurrencesInArray :: Ord a => [a] -> a
oddOccurrencesInArray xs = n
  where
    (=+) m x = M.insertWith (+) x 1 m
    count [] = M.empty
    count (x : xs) = count xs =+ x
    [(n, _)] = filter ((== 1) . snd) $ M.toList $ count xs
