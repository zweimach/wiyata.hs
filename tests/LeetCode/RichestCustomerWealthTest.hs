module LeetCode.RichestCustomerWealthTest where

import LeetCode.RichestCustomerWealth (maximumWealth)
import Test.Tasty (TestTree, testGroup)
import Test.Tasty.HUnit (testCase, (@?=))

maximumWealthTest :: TestTree
maximumWealthTest =
  testGroup
    "maximumWealth"
    [ testCase "small" $ maximumWealth [[1, 2, 3], [3, 2, 1]] @?= 6,
      testCase "medium" $ maximumWealth [[1, 5], [7, 3], [3, 5]] @?= 10,
      testCase "large" $ maximumWealth [[2, 8, 7], [7, 1, 3], [1, 9, 5]] @?= 17
    ]
