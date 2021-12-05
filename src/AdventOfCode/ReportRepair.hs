module AdventOfCode.ReportRepair where

import Data.List (find)

reportRepair :: [Int] -> Maybe Int
reportRepair [] = Nothing
reportRepair (x : xs)
    | null e = reportRepair xs
    | otherwise = fmap (* x) e
  where
    e = find (\y -> x + y == 2020) xs

reportRepairPartTwo :: [Int] -> Maybe Int
reportRepairPartTwo [] = Nothing
reportRepairPartTwo [_] = Nothing
reportRepairPartTwo (x : xs)
    | null e = reportRepairPartTwo xs
    | otherwise = (* x) <$> e
  where
    e = go [x] xs
    f xs = find ((== 2020) . sum . (: xs))
    go _ [] = Nothing
    go xs (y : ys)
        | null e' = go xs ys
        | otherwise = (* y) <$> e'
      where
        e' = f (y : xs) ys
