module LeetCode.ValidParentheses (isValid) where

import qualified Data.Map as Map

isValid :: String -> Bool
isValid = null . go []
  where
    pairs = Map.fromList [('(', ')'), ('[', ']'), ('{', '}')]
    go acc [] = acc
    go [] (y : ys) = go [y] ys
    go acc@(x : xs) (y : ys)
        | Map.lookup x pairs == Just y = go xs ys
        | otherwise = go (y : acc) ys
