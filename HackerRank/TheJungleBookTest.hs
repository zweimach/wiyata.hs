module HackerRank.TheJungleBookTest (theJungleBookTest) where

import HackerRank.TheJungleBook (minimumGroups)
import Test.Tasty (TestTree, testGroup)
import Test.Tasty.HUnit (testCase, (@?=))

theJungleBookTest :: TestTree
theJungleBookTest =
    testGroup
        "theJungleBook"
        [ testCase "short" $ minimumGroups [-1, 0, 1] @?= 3
        , testCase "medium" $ minimumGroups [1, -1, 3, -1] @?= 2
        , testCase "long" $ minimumGroups [-1, 8, 6, 0, 7, 3, 8, 9, -1, 6] @?= 5
        ]
