module LeetCode.RichestCustomerWealth (maximumWealth) where

maximumWealth :: [[Int]] -> Int
maximumWealth = maximum . map sum
