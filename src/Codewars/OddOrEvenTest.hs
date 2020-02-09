module Codewars.OddOrEvenTest where

import Codewars.OddOrEven
import Test.Tasty
import Test.Tasty.HUnit

oddOrEvenTest :: TestTree
oddOrEvenTest =
  testGroup
    "oddOrEven"
    [ testCase "[1, 2, 3]" $ oddOrEven [1, 2, 3] @?= "even",
      testCase "[1, 1, 1]" $ oddOrEven [1, 1, 1] @?= "odd"
    ]
