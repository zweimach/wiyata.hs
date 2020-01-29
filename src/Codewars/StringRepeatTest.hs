module Codewars.StringRepeatTest where

import           Test.Tasty
import           Test.Tasty.HUnit
import           Codewars.StringRepeat

stringRepeatTest :: TestTree
stringRepeatTest = testGroup
    "stringRepeat"
    [ testCase "hello" $ repeatStr 3 "hello" @?= "hellohellohello"
    , testCase "my" $ repeatStr 1 "my" @?= "my"
    , testCase "haskell" $ repeatStr 2 "haskell" @?= "haskellhaskell"
    ]
