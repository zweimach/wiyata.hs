module AdventOfCode.SonarSweep where

import Data.List (tails)

sonarSweep :: [Int] -> Int
sonarSweep = length . filter id . map f . g
  where
    f (f, s) = f < s
    g xs = zip xs (tail xs)

sonarSweepPartTwo :: [Int] -> Int
sonarSweepPartTwo = length . filter id . map f . g . map sum . h
  where
    f (f, s) = f < s
    g xs = zip xs (tail xs)
    h xs = zipWith const (take 3 <$> tails xs) (drop 2 xs)
