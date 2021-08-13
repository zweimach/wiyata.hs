module DMOJ.NextInLineTest where

import DMOJ.NextInLine (nextInLine)
import Test.Tasty (TestTree, testGroup)
import Test.Tasty.HUnit (testCase, (@?=))

nextInLineTest :: TestTree
nextInLineTest =
    testGroup
        "nextInLine"
        [ testCase "12 15" $ nextInLine 12 15 @?= 18
        , testCase "10 10" $ nextInLine 10 10 @?= 10
        , testCase "5 10" $ nextInLine 5 10 @?= 15
        ]
