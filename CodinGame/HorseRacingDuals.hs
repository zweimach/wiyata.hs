module CodinGame.HorseRacingDuals where

import Data.List (sort)

horseRacingDuals :: [Int] -> Int
horseRacingDuals = minimum . g . sort
  where
    f (fs, sn) = abs $ fs - sn
    g xs = zipWith (curry f) xs $ tail xs
