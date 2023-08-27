module CodinGame.HorseRacingDuals (horseRacingDuals) where

import Data.List (sort)

horseRacingDuals :: [Int] -> Int
horseRacingDuals = minimum . map abs . f . sort
  where
    f xs = zipWith (-) xs (tail xs)
