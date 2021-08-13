module LeetCode.ValidParenthesesTest where

import LeetCode.ValidParentheses (validParentheses)
import Test.Tasty (TestTree, testGroup)
import Test.Tasty.HUnit (testCase, (@?=))

validParenthesesTest :: TestTree
validParenthesesTest =
  testGroup
    "validParentheses"
    [ testCase "(){}[]" $ validParentheses "(){}[]" @?= True,
      testCase "[({(()()())})]" $ validParentheses "[({(()()())})]" @?= True,
      testCase "{([({[]}[])()])}" $ validParentheses "{([({[]}[])()])}" @?= True,
      testCase "([{({[]})}]))" $ validParentheses "([{({[]})}]))" @?= False,
      testCase "[](){}(){}[]]]]" $ validParentheses "[](){}(){}[]]]]" @?= False,
      testCase "{{[[(((" $ validParentheses "{{[[(((" @?= False
    ]
