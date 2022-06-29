module LeetCode.RichestCustomerWealth where

maximumWealth :: [[Int]] -> Int
maximumWealth = maximum . map sum
