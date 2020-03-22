module KickStart.EvenDigits where

import Control.Monad (mapM_, replicateM)
import Data.Char (digitToInt)

evenDigits :: [Integer] -> [Integer]
evenDigits [] = []
evenDigits (x : xs)
  | isDigitEven x = 0 : evenDigits xs
  | otherwise = min (toDiff True) (toDiff False) : evenDigits xs
  where
    isDigitEven n = all (even . digitToInt) $ show n
    toDiff = abs . (x -) . read . snd . toEven
    edgeOne fn = head (show x) == '1' && fn
    edgeTwo fn = head (show x) == '9' && not fn
    toEven fn =
      foldl reduce ((False, edgeOne fn, edgeTwo fn, fn), "") $
        digitToInt <$> show x
    reduce ((found, edgeOne, edgeTwo, fn), s) x
      | edgeTwo = makeTuple $ s ++ "8"
      | edgeOne = makeTuple $ s ++ (if null s then "0" else "8")
      | found = makeTuple $ s ++ (if fn then "8" else "0")
      | odd x = makeOddTuple $ s ++ show (if fn then x - 1 else x + 1)
      | otherwise = makeTuple $ s ++ show x
      where
        makeTuple n = ((found, edgeOne, edgeTwo, fn), n)
        makeOddTuple n = ((True, edgeOne, edgeTwo, fn), n)
