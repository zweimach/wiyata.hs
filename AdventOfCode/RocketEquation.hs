module AdventOfCode.RocketEquation (rocketEquation, rocketEquationPartTwo) where

rocketEquation :: [Int] -> Int
rocketEquation = sum . fmap (subtract 2 . (`div` 3))

rocketEquationPartTwo :: [Int] -> Int
rocketEquationPartTwo = sum . fmap (go [])
  where
    f = subtract 2 . (`div` 3)
    go acc n
        | f n `div` 3 < 0 = sum acc
        | otherwise = go (f n : acc) (f n)
