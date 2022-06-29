module HackerRank.SlowestKeyPress where

import Data.Char (chr)
import Data.List (maximumBy)

slowestKey :: [(Int, Int)] -> String
slowestKey keyTimes = [chr $ 97 + fst maxValue]
  where
    maxValue = maximumBy comparePair $ (head keyTimes :) $ zipWith mergePair keyTimes $ tail keyTimes
    mergePair (_, k1) (y, k2) = (y, abs $ k1 - k2)
    comparePair (_, k1) (_, k2)
        | k1 < k2 = LT
        | k1 > k2 = GT
        | otherwise = EQ
