module Codility.OddOccurrencesInArrayTest (oddOccurrencesInArrayTest) where

import Codility.OddOccurrencesInArray (oddOccurrencesInArray)
import Test.Tasty (TestTree, testGroup)
import Test.Tasty.HUnit (testCase, (@?=))

oddOccurrencesInArrayTest :: TestTree
oddOccurrencesInArrayTest =
    testGroup
        "oddOccurrencesInArray"
        [ testCase "7" $ oddOccurrencesInArray [9, 9, 3, 3, 9, 9, 7] @?= 7
        , testCase "9" $ oddOccurrencesInArray [1, 1, 9, 2, 2, 3, 3, 4, 5, 6, 6, 5, 4, 7, 8, 8, 7] @?= 9
        ]
