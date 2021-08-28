module HackerRank.AlphabeticallySmallest where

import Data.List (sort)

smallestString :: [String] -> String
smallestString = concat . sort
