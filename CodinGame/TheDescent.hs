module CodinGame.TheDescent (theDescent) where

import Data.List (elemIndex)
import Data.Maybe (fromJust)

theDescent :: [Int] -> Int
theDescent values = fromJust $ elemIndex (maximum values) values
