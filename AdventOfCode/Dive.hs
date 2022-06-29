module AdventOfCode.Dive where

import Data.Foldable (foldl')

dive :: [String] -> Int
dive = i . foldl' h (0, 0) . map (g . f . words)
  where
    f xs = (head xs, (head . tail) xs)
    g (fs, sn) = (fs, read sn)
    h (d, h) (fs, s) = case fs of
        "forward" -> (d, h + s)
        "up" -> (d - s, h)
        _ -> (d + s, h)
    i (fs, sn) = fs * sn

divePartTwo :: [String] -> Int
divePartTwo = i . foldl' h (0, 0, 0) . map (g . f . words)
  where
    f xs = (head xs, (head . tail) xs)
    g (fs, sn) = (fs, read sn)
    h (d, h, a) (fs, s) = case fs of
        "forward" -> (d + a * s, h + s, a)
        "up" -> (d, h, a - s)
        _ -> (d, h, a + s)
    i (fs, sn, _) = fs * sn
