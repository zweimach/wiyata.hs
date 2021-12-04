module OpenKattis.Everywhere where

import Data.Containers.ListUtils (nubOrd)

everywhere :: [String] -> Int
everywhere = length . nubOrd
