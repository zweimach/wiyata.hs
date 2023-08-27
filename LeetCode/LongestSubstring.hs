module LeetCode.LongestSubstring (lengthOfLongestSubstring) where

import Data.Maybe (fromJust, isNothing)
import Data.Sequence ((|>))
import qualified Data.Sequence as Seq

lengthOfLongestSubstring :: String -> Int
lengthOfLongestSubstring str = maximum $ go [] Seq.empty str
  where
    go acc buf [] = Seq.length buf : acc
    go acc buf next@(x : xs)
        | isNothing idxLeft = go acc (buf |> x) xs
        | otherwise = go (Seq.length buf : acc) (Seq.drop (fromJust idxLeft + 1) buf) next
      where
        idxLeft = Seq.elemIndexL x buf
