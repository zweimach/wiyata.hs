module HackerRank.SalesByMatch (sockMerchant) where

import qualified Data.Set as Set

sockMerchant :: Int -> [Int] -> Int
sockMerchant _ = go Set.empty 0
  where
    go _ n [] = n
    go ps n (x : xs)
        | Set.member x ps = go (Set.delete x ps) (n + 1) xs
        | otherwise = go (Set.insert x ps) n xs
