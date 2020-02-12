module HackerRank.RepeatedStringTest where

import HackerRank.RepeatedString
import Test.Tasty
import Test.Tasty.HUnit

repeatedStringTest :: TestTree
repeatedStringTest =
  testGroup
    "repeatedString"
    [ testCase "\"aba\" 10" $ repeatedString "aba" 10 @?= 7,
      testCase "\"abcac\" 10" $ repeatedString "abcac" 10 @?= 4,
      testCase "\"a\" 1000000" $ repeatedString "a" 1000000 @?= 1000000
    ]
