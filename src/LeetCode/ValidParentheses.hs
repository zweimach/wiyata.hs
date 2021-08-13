module LeetCode.ValidParentheses where

import qualified Data.Map as Map

validParentheses :: String -> Bool
validParentheses str = null $ go [] str
  where
    pairs = Map.fromList [('(', ')'), ('[', ']'), ('{', '}')]
    go acc [] = acc
    go [] (y : ys) = go [y] ys
    go acc@(x : xs) (y : ys)
        | Map.lookup x pairs == Just y = go xs ys
        | otherwise = go (y : acc) ys
