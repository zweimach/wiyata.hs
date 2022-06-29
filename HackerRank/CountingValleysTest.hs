module HackerRank.CountingValleysTest where

import HackerRank.CountingValleys (countingValleys)
import Test.Tasty (TestTree, testGroup)
import Test.Tasty.HUnit (testCase, (@?=))

countingValleysTest :: TestTree
countingValleysTest =
    testGroup
        "countingValleys"
        [ testCase "UDDDUDUU" $ countingValleys 8 "UDDDUDUU" @?= 1
        , testCase "DDUUDDUDUUUD" $ countingValleys 12 "DDUUDDUDUUUD" @?= 2
        ]
