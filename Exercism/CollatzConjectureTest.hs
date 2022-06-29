module Exercism.CollatzConjectureTest where

import Exercism.CollatzConjecture (collatz)
import Test.Tasty (TestTree, testGroup)
import Test.Tasty.HUnit (testCase, (@?=))

collatzConjectureTest :: TestTree
collatzConjectureTest =
    testGroup
        "collatzConjecture"
        [ testCase "zero steps for one" $ collatz 1 @?= Just 0
        , testCase "divide if even" $ collatz 16 @?= Just 4
        , testCase "even and odd steps" $ collatz 12 @?= Just 9
        , testCase "large number of even and odd steps" $ collatz 1000000 @?= Just 152
        , testCase "zero is an error" $ collatz 0 @?= Nothing
        , testCase "negative value is an error" $ collatz (-15) @?= Nothing
        ]
