module Exercism.CollatzConjecture (collatz) where

collatz :: Integer -> Maybe Integer
collatz = go 0
  where
    go acc 1 = Just acc
    go acc n
        | n <= 0 = Nothing
        | even n = go (acc + 1) (n `div` 2)
        | otherwise = go (acc + 1) (3 * n + 1)
