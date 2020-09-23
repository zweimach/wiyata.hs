module Codewars.OddOrEvenTest where

import Codewars.OddOrEven (oddOrEven)
import Test.Tasty (TestTree, testGroup)
import Test.Tasty.HUnit (testCase, (@?=))

oddOrEvenTest :: TestTree
oddOrEvenTest =
  testGroup
    "oddOrEven"
    [ testCase "[1, 2, 3]" $ oddOrEven [1, 2, 3] @?= "even",
      testCase "[1, 1, 1]" $ oddOrEven [1, 1, 1] @?= "odd"
    ]
