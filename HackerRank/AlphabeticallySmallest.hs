module HackerRank.AlphabeticallySmallest (smallestString) where

import Data.List (sort)

smallestString :: [String] -> String
smallestString = concat . sort
