module DMOJ.NextInLine (nextInLine) where

nextInLine :: Int -> Int -> Int
nextInLine z y = y + abs (y - z)
