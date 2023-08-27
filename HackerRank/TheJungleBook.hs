module HackerRank.TheJungleBook (minimumGroups) where

minimumGroups :: [Int] -> Int
minimumGroups xs = maximum $ map (findDepth 1 xs) xs
  where
    findDepth _ _ (-1) = 1
    findDepth acc xs n
        | xs !! n == -1 = acc + 1
        | otherwise = findDepth (acc + 1) xs (xs !! n)
