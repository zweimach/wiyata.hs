module CodinGame.Temperatures where

import           Data.List

temperatures :: [Int] -> Int
temperatures []    = 0
temperatures temps = if existBoth then absMinTemp else minTemp
  where
    diffTemps           = map (abs . (0 -)) temps
    minDiffTemp         = minimum diffTemps
    (Just minTempIndex) = elemIndex minDiffTemp diffTemps
    minTemp             = temps !! minTempIndex
    minTempSig          = signum minTemp
    absMinTemp          = abs minTemp
    existBoth           = minTempSig == -1 && elem absMinTemp temps
