module Codewars.StringRepeatTest where

import Codewars.StringRepeat (repeatStr)
import Test.Tasty (TestTree, testGroup)
import Test.Tasty.HUnit (testCase, (@?=))

stringRepeatTest :: TestTree
stringRepeatTest =
    testGroup
        "stringRepeat"
        [ testCase "hello" $ repeatStr 3 "hello" @?= "hellohellohello"
        , testCase "my" $ repeatStr 1 "my" @?= "my"
        , testCase "haskell" $ repeatStr 2 "haskell" @?= "haskellhaskell"
        ]
