module DMOJ.NextInLine where

nextInLine :: Int -> Int -> Int
nextInLine z y = y + abs (y - z)
