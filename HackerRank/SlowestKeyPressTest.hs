module HackerRank.SlowestKeyPressTest (slowestKeyPressTest) where

import HackerRank.SlowestKeyPress (slowestKey)
import Test.Tasty (TestTree, testGroup)
import Test.Tasty.HUnit (testCase, (@?=))

slowestKeyPressTest :: TestTree
slowestKeyPressTest =
    testGroup
        "slowestKeyPress"
        [ testCase "short" $
            slowestKey [(0, 2), (1, 3), (0, 7)] @?= "a"
        , testCase "medium" $
            slowestKey [(0, 1), (0, 3), (4, 5), (5, 6), (4, 10)] @?= "e"
        , testCase "long" $
            slowestKey
                [ (0, 3)
                , (20, 5)
                , (2, 6)
                , (15, 7)
                , (9, 8)
                , (19, 9)
                , (24, 10)
                , (4, 12)
                , (3, 13)
                ]
                @?= "a"
        ]
