module CodinGame.HorseRacingDuals where

import Data.List (sort)

horseRacingDuals :: [Int] -> Int
horseRacingDuals xs = minimum $ zipWith (curry diff) ys $ tail ys
  where
    diff (f, s) = abs $ f - s
    ys = sort xs
