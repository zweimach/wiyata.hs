module HackerRank.PlusMinus (plusMinus) where

plusMinus :: (Fractional a, Ord a) => [a] -> (a, a, a)
plusMinus arr = (positives, negatives, zeros)
  where
    lengthF n = fromIntegral $ length n
    divBy f = (/ lengthF arr) $ lengthF $ filter f arr
    positives = divBy (> 0)
    negatives = divBy (< 0)
    zeros = divBy (== 0)
