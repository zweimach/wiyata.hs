module HackerRank.BalancedBracketsTest where

import HackerRank.BalancedBrackets (isBalanced)
import Test.Tasty (TestTree, testGroup)
import Test.Tasty.HUnit (testCase, (@?=))

balancedBracketsTest :: TestTree
balancedBracketsTest =
    testGroup
        "balancedBrackets"
        [ testCase "(){}[]" $ isBalanced "(){}[]" @?= "YES"
        , testCase "[({(()()())})]" $ isBalanced "[({(()()())})]" @?= "YES"
        , testCase "{([({[]}[])()])}" $ isBalanced "{([({[]}[])()])}" @?= "YES"
        , testCase "([{({[]})}]))" $ isBalanced "([{({[]})}]))" @?= "NO"
        , testCase "[](){}(){}[]]]]" $ isBalanced "[](){}(){}[]]]]" @?= "NO"
        , testCase "{{[[(((" $ isBalanced "{{[[(((" @?= "NO"
        ]
