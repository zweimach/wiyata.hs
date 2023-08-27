module Codeforces.ReorderTest (reorderTest) where

import Codeforces.Reorder (reorder)
import Test.Tasty (TestTree, testGroup)
import Test.Tasty.HUnit (testCase, (@?=))

reorderTest :: TestTree
reorderTest =
    testGroup
        "reorder"
        [ testCase "[0, 1, 2, 3] 4" $ reorder [0, 1, 2, 3] 4 @?= "NO"
        , testCase "[2, 5, 1] 8" $ reorder [2, 5, 1] 8 @?= "YES"
        ]
