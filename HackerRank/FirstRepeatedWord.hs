module HackerRank.FirstRepeatedWord where

firstRepeatedWord :: String -> String
firstRepeatedWord sentence = findFirst [] $ words . dropDelimiter $ sentence
  where
    dropDelimiter = filter (\x -> x `elem` ['a' .. 'z'] ++ ['A' .. 'Z'] ++ [' '])
    findFirst acc xs
        | head xs `elem` acc = head xs
        | otherwise = findFirst (head xs : acc) $ tail xs
