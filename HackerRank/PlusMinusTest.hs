module HackerRank.PlusMinusTest (plusMinusTest) where

import HackerRank.PlusMinus (plusMinus)
import Test.Tasty (TestTree, testGroup)
import Test.Tasty.HUnit (testCase, (@?=))

plusMinusTest :: TestTree
plusMinusTest =
    testGroup
        "plusMinus"
        [ testCase "[-4, 3, -9, 0, 4, 1]" $
            plusMinus [-4, 3, -9, 0, 4, 1]
                @?= (0.5, 0.3333333333333333, 0.16666666666666666)
        ]
