module LeetCode.EvaluateReversePolishNotationTest (evaluateReversePolishNotationTest) where

import LeetCode.EvaluateReversePolishNotation (evalRPN)
import Test.Tasty (TestTree, testGroup)
import Test.Tasty.HUnit (testCase, (@?=))

evaluateReversePolishNotationTest :: TestTree
evaluateReversePolishNotationTest =
    testGroup
        "evaluateReversePolishNotation"
        [ testCase "A" $ evalRPN ["2", "1", "+", "3", "*"] @?= 9
        , testCase "B" $ evalRPN ["4", "13", "5", "/", "+"] @?= 6
        , testCase "C" $ evalRPN ["10", "6", "9", "3", "+", "-11", "*", "/", "*", "17", "+", "5", "+"] @?= 22
        ]
