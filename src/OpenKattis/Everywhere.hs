module OpenKattis.Everywhere where

import Data.List

everywhere :: [String] -> Int
everywhere places = length $ nub places
