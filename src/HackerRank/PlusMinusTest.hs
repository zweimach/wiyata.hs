module HackerRank.PlusMinusTest where

import HackerRank.PlusMinus
import Test.Tasty
import Test.Tasty.HUnit

plusMinusTest :: TestTree
plusMinusTest =
  testGroup
    "plusMinus"
    [ testCase "[-4, 3, -9, 0, 4, 1]" $
        plusMinus [-4, 3, -9, 0, 4, 1]
          @?= (0.5, 0.3333333333333333, 0.16666666666666666)
    ]
