module CodinGame.TheDescentTest (theDescentTest) where

import CodinGame.TheDescent (theDescent)
import Test.Tasty (TestTree, testGroup)
import Test.Tasty.HUnit (testCase, (@?=))

theDescentTest :: TestTree
theDescentTest =
    testGroup
        "theDescent"
        [ testCase "[10, 12, 19, 14, 20, 0, 13, 15]" $
            theDescent [10, 12, 19, 14, 20, 0, 13, 15] @?= 4
        , testCase "[0, 1, 2, 3, 4, 5, 6, 7]" $
            theDescent [0, 1, 2, 3, 4, 5, 6, 7] @?= 7
        ]
