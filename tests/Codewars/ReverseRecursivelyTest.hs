module Codewars.ReverseRecursivelyTest where

import Codewars.ReverseRecursively
import Test.Tasty
import Test.Tasty.HUnit

reverseRecursivelyTest :: TestTree
reverseRecursivelyTest =
  testGroup
    "reverseRecursively"
    [ testCase "[1, 2, 3]" $ revR [1, 2, 3] @?= [3, 2, 1],
      testCase "[1, 1, 1]" $ revR [1, 1, 1] @?= [1, 1, 1],
      testCase "[2, 4, 4, 1, 5]" $ revR [2, 4, 4, 1, 5] @?= [5, 1, 4, 4, 2]
    ]
