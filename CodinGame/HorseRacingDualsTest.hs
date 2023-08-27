module CodinGame.HorseRacingDualsTest (horseRacingDualsTest) where

import CodinGame.HorseRacingDuals (horseRacingDuals)
import Test.Tasty (TestTree, testGroup)
import Test.Tasty.HUnit (testCase, (@?=))

horseRacingDualsTest :: TestTree
horseRacingDualsTest =
    testGroup
        "horseRacingDuals"
        [ testCase "simple" $ horseRacingDuals [3, 5, 8, 9] @?= 1
        , testCase "any order" $ horseRacingDuals [10, 5, 15, 17, 3, 8, 11, 28, 6, 55, 7] @?= 1
        ]
