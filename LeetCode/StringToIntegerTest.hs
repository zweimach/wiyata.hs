module LeetCode.StringToIntegerTest (stringToIntegerTest) where

import LeetCode.StringToInteger (myAtoi)
import Test.Tasty (TestTree, testGroup)
import Test.Tasty.HUnit (testCase, (@?=))

stringToIntegerTest :: TestTree
stringToIntegerTest =
    testGroup
        "stringToInteger"
        [ testCase "1" $ myAtoi "42" @?= 42
        , testCase "2" $ myAtoi "   -42" @?= -42
        , testCase "3" $ myAtoi "4193 with words" @?= 4193
        , testCase "4" $ myAtoi "words and 987" @?= 0
        , testCase "5" $ myAtoi "-91283472332" @?= -2147483648
        , testCase "6" $ myAtoi "- 100" @?= 0
        , testCase "7" $ myAtoi "+-12" @?= 0
        ]
