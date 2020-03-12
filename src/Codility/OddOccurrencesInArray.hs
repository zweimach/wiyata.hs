module Codility.OddOccurrencesInArray where

import qualified Data.Map as M
import Data.Map (Map (..))

oddOccurrencesInArray :: (Eq a, Ord a) => [a] -> a
oddOccurrencesInArray xs = n
  where
    (=+) m x = M.insertWith (+) x 1 m
    count [x] = M.empty =+ x
    count (x : xs) = count xs =+ x
    [(n, _)] = filter ((== 1) . snd) $ M.toList $ count xs
