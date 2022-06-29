module HackerRank.BalancedBrackets where

import qualified Data.Map as Map

isBalanced :: String -> String
isBalanced str = if null $ go [] str then "YES" else "NO"
  where
    pairs = Map.fromList [('(', ')'), ('[', ']'), ('{', '}')]
    go acc [] = acc
    go [] (y : ys) = go [y] ys
    go acc@(x : xs) (y : ys)
        | Map.lookup x pairs == Just y = go xs ys
        | otherwise = go (y : acc) ys
