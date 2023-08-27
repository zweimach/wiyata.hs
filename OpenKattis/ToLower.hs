module OpenKattis.ToLower (toLower) where

import qualified Data.Char as C

toLower :: [[String]] -> Int
toLower = length . filter id . map (all canBeLower)
  where
    canBeLower s = all C.isLower s || all C.isLower (tail s)
