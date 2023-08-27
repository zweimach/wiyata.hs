module AdventOfCode.SonarSweep (sonarSweep, sonarSweepPartTwo) where

import Data.List (tails)

sonarSweep :: [Int] -> Int
sonarSweep = length . filter id . f
  where
    f xs = zipWith (<) xs (tail xs)

sonarSweepPartTwo :: [Int] -> Int
sonarSweepPartTwo = length . filter id . f . map sum . g
  where
    f xs = zipWith (<) xs (tail xs)
    g xs = zipWith const (take 3 <$> tails xs) (drop 2 xs)
