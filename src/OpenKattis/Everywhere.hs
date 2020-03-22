module OpenKattis.Everywhere where

import Data.List (nub)

everywhere :: [String] -> Int
everywhere places = length $ nub places
