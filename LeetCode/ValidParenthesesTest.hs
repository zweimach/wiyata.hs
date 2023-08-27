module LeetCode.ValidParenthesesTest (validParenthesesTest) where

import LeetCode.ValidParentheses (isValid)
import Test.Tasty (TestTree, testGroup)
import Test.Tasty.HUnit (testCase, (@?=))

validParenthesesTest :: TestTree
validParenthesesTest =
    testGroup
        "validParentheses"
        [ testCase "(){}[]" $ isValid "(){}[]" @?= True
        , testCase "[({(()()())})]" $ isValid "[({(()()())})]" @?= True
        , testCase "{([({[]}[])()])}" $ isValid "{([({[]}[])()])}" @?= True
        , testCase "([{({[]})}]))" $ isValid "([{({[]})}]))" @?= False
        , testCase "[](){}(){}[]]]]" $ isValid "[](){}(){}[]]]]" @?= False
        , testCase "{{[[(((" $ isValid "{{[[(((" @?= False
        ]
