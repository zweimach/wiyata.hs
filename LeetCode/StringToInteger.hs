module LeetCode.StringToInteger (myAtoi) where

import Data.Int (Int32)
import Text.Read (readMaybe)

myAtoi :: String -> Int
myAtoi = go 0 0 False False
  where
    go acc _ neg overflow [] = case (neg, overflow) of
        (True, True) -> fromIntegral (minBound :: Int32)
        (True, False) -> negate acc
        (False, True) -> fromIntegral (maxBound :: Int32)
        (False, False) -> acc
    go acc count neg overflow (x : xs)
        | x == ' ' && count == 0 = go acc count neg overflow xs
        | x == '+' && count == 0 = go acc 1 neg overflow xs
        | x == '-' && count == 0 = go acc 1 True overflow xs
        | Just n <- readMaybe [x] =
            if (acc * 10 + n) > fromIntegral (maxBound :: Int32)
                then go acc (count + 1) neg True xs
                else go (acc * 10 + n) (count + 1) neg overflow xs
        | otherwise = go acc count neg overflow []
