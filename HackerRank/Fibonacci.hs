module HackerRank.Fibonacci (fibonacci) where

fibonacci :: Int -> Int
fibonacci = go 0 1
  where
    go a b n
        | n == 0 = a
        | otherwise = go b (a + b) (n - 1)
