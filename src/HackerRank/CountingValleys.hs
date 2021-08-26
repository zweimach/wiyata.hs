module HackerRank.CountingValleys where

countingValleys :: Int -> String -> Int
countingValleys _ = go 0 0
  where
    go acc _ [] = acc
    go acc pos (x : xs)
        | x == 'U' && pos == -1 = go (acc + 1) (pos + 1) xs
        | x == 'U' = go acc (pos + 1) xs
        | x == 'D' = go acc (pos - 1) xs
        | otherwise = go acc pos xs
