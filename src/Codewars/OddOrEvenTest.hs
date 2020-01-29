module Codewars.OddOrEvenTest where

import           Test.Tasty
import           Test.Tasty.HUnit
import           Codewars.OddOrEven

oddOrEvenTest :: TestTree
oddOrEvenTest = testGroup
    "oddOrEven"
    [ testCase "[1, 2, 3]" $ oddOrEven [1, 2, 3] @?= "even"
    , testCase "[1, 1, 1]" $ oddOrEven [1, 1, 1] @?= "odd"
    ]
