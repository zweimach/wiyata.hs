module CodinGame.TheDescent where

import Data.List

theDescent :: [Int] -> Int
theDescent values = maxValIndex
  where
    maxValue = maximum values
    (Just maxValIndex) = elemIndex maxValue values
