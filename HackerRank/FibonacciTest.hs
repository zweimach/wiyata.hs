module HackerRank.FibonacciTest where

import HackerRank.Fibonacci (fibonacci)
import Test.Tasty (TestTree, testGroup)
import Test.Tasty.HUnit (testCase, (@?=))

fibonacciTest :: TestTree
fibonacciTest =
    testGroup
        "fibonacci"
        [ testCase "15" $ fibonacci 15 @?= 610
        ]
