module Codewars.StringRepeatTest where

import Codewars.StringRepeat
import Test.Tasty
import Test.Tasty.HUnit

stringRepeatTest :: TestTree
stringRepeatTest =
  testGroup
    "stringRepeat"
    [ testCase "hello" $ repeatStr 3 "hello" @?= "hellohellohello",
      testCase "my" $ repeatStr 1 "my" @?= "my",
      testCase "haskell" $ repeatStr 2 "haskell" @?= "haskellhaskell"
    ]
