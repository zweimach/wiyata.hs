module Codewars.ReverseRecursively where

revR :: [Int] -> [Int]
revR = go []
  where
    go acc [] = acc
    go acc (x : xs) = go (x : acc) xs
