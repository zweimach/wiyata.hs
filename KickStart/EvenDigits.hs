module KickStart.EvenDigits (evenDigits) where

import Data.Char (digitToInt)
import Data.List (foldl')

evenDigits :: [Integer] -> [Integer]
evenDigits = map go
  where
    go n
        | isDigitEven n = 0
        | otherwise = min (toDiff True n) (toDiff False n)
    isDigitEven n = all (even . digitToInt) $ show n
    toDiff isDecr n = abs . (n -) . read . snd $ toEven isDecr n
    edgeCaseOne isDecr n = head (show n) == '1' && isDecr
    edgeCaseTwo isDecr n = head (show n) == '9' && not isDecr
    toEven isDecr n =
        foldl' reduce ((False, edgeCaseOne isDecr n, edgeCaseTwo isDecr n, isDecr), "") $
            digitToInt <$> show n
    reduce ((isFound, isEdgeCaseOne, isEdgeCaseTwo, isDecr), s) n
        | isEdgeCaseTwo = makeTuple $ s ++ "8"
        | isEdgeCaseOne = makeTuple $ s ++ (if null s then "0" else "8")
        | isFound = makeTuple $ s ++ (if isDecr then "8" else "0")
        | odd n = makeOddTuple $ s ++ show (if isDecr then n - 1 else n + 1)
        | otherwise = makeTuple $ s ++ show n
      where
        makeTuple s = ((isFound, isEdgeCaseOne, isEdgeCaseTwo, isDecr), s)
        makeOddTuple s = ((True, isEdgeCaseOne, isEdgeCaseTwo, isDecr), s)
