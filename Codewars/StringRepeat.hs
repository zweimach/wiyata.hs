module Codewars.StringRepeat (repeatStr) where

repeatStr :: Int -> String -> String
repeatStr n str = concat $ replicate n str
