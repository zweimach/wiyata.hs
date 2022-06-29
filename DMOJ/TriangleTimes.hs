module DMOJ.TriangleTimes where

triangleTimes :: Int -> Int -> Int -> String
triangleTimes a b c
    | sum [a, b, c] /= 180 = "Error"
    | a == b && b == c = "Equilateral"
    | a == b || b == c || c == a = "Isosceles"
    | otherwise = "Scalene"
