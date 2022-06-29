module HackerRank.FirstRepeatedWordTest where

import HackerRank.FirstRepeatedWord (firstRepeatedWord)
import Test.Tasty (TestTree, testGroup)
import Test.Tasty.HUnit (testCase, (@?=))

firstRepeatedWordTest :: TestTree
firstRepeatedWordTest =
    testGroup
        "firstRepeatedWord"
        [ testCase "short" $
            firstRepeatedWord "He had had quite enough of this nonsense." @?= "had"
        , testCase "medium" $
            firstRepeatedWord "We are the people who are selected by the people of country who gave vote." @?= "are"
        ]
