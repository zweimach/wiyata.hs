module HackerRank.AlphabeticallySmallestTest where

import HackerRank.AlphabeticallySmallest (smallestString)
import Test.Tasty (TestTree, testGroup)
import Test.Tasty.HUnit (testCase, (@?=))

smallestStringTest :: TestTree
smallestStringTest =
    testGroup
        "smallestString"
        [ testCase "short" $
            smallestString ["ab", "abc", "bc"] @?= "ababcbc"
        , testCase "medium" $
            smallestString ["asdf", "qwer", "abs", "aaaat", "quart"] @?= "aaaatabsasdfquartqwer"
        ]
