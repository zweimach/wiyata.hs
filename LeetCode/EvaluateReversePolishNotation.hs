module LeetCode.EvaluateReversePolishNotation (evalRPN) where

import Text.Read (readMaybe)

data Operator = Add | Subtract | Multiply | Divide

instance Read Operator where
    readsPrec _ "+" = [(Add, "")]
    readsPrec _ "-" = [(Subtract, "")]
    readsPrec _ "*" = [(Multiply, "")]
    readsPrec _ "/" = [(Divide, "")]
    readsPrec _ _ = undefined

evalRPN :: [String] -> Int
evalRPN = go []
  where
    go acc [] = head acc
    go acc (x : xs)
        | Just n <- readMaybe x :: Maybe Int = go (n : acc) xs
        | otherwise =
            let num1 = head (tail acc)
                num2 = head acc
                op = case (read x :: Operator) of
                    Add -> (+)
                    Subtract -> (-)
                    Multiply -> (*)
                    Divide -> \x y -> if y > 0 then x `div` y else 0
             in go (num1 `op` num2 : tail (tail acc)) xs
