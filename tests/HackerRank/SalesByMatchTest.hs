module HackerRank.SalesByMatchTest where

import HackerRank.SalesByMatch (sockMerchant)
import Test.Tasty (TestTree, testGroup)
import Test.Tasty.HUnit (testCase, (@?=))

salesByMatchTest :: TestTree
salesByMatchTest =
    testGroup
        "salesByMatch"
        [ testCase "[10, 20, 20, 10, 10, 30, 50, 10, 20]" $
            sockMerchant 9 [10, 20, 20, 10, 10, 30, 50, 10, 20] @?= 3
        , testCase "[1, 2, 1, 2, 1, 3, 2]" $
            sockMerchant 7 [1, 2, 1, 2, 1, 3, 2] @?= 2
        ]
