module OpenKattis.ToLower where

import Data.Char (isLower)

toLower' :: [[String]] -> Int
toLower' = length . filter id . map (all canBeLower)
  where
    canBeLower s = all isLower s || all isLower (tail s)
