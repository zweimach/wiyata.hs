module CodinGame.Temperatures where

import Data.List (elemIndex)
import Data.Maybe (fromJust)

temperatures :: [Int] -> Int
temperatures [] = 0
temperatures temps
    | existBoth = absMinTemp
    | otherwise = minTemp
  where
    diffTemps = map (abs . (0 -)) temps
    minDiffTemp = minimum diffTemps
    minTempIndex = fromJust $ elemIndex minDiffTemp diffTemps
    minTemp = temps !! minTempIndex
    minTempSig = signum minTemp
    absMinTemp = abs minTemp
    existBoth = minTempSig == -1 && elem absMinTemp temps
