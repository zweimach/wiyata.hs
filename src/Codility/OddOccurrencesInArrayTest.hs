module Codility.OddOccurrencesInArrayTest where

import Codility.OddOccurrencesInArray
import Test.Tasty
import Test.Tasty.HUnit

oddOccurrencesInArrayTest :: TestTree
oddOccurrencesInArrayTest =
  testGroup
    "oddOccurrencesInArray"
    [ testCase "7" $ oddOccurrencesInArray [9, 9, 3, 3, 9, 9, 7] @?= 7,
      testCase "9" $ oddOccurrencesInArray [1, 1, 9, 2, 2, 3, 3, 4, 5, 6, 6, 5, 4, 7, 8, 8, 7] @?= 9
    ]
