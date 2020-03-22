module KickStart.EvenDigitsTest where

import KickStart.EvenDigits
import Test.Tasty
import Test.Tasty.HUnit

evenDigitsTest :: TestTree
evenDigitsTest =
  testGroup
    "evenDigits"
    [ testCase "normal cases" $ evenDigits [42, 11, 1, 2018] @?= [0, 3, 1, 2],
      testCase "edge cases" $
        evenDigits [999, 198234, 53813, 76323, 98134]
          @?= [111, 1766, 4925, 3677, 9246]
    ]
