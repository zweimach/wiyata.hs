module Codility.BinaryGapTest where

import Codility.BinaryGap
import Test.Tasty
import Test.Tasty.HUnit

binaryGapTest :: TestTree
binaryGapTest =
  testGroup
    "binaryGap"
    [ testCase "9" $ binaryGap 9 @?= 2,
      testCase "8" $ binaryGap 8 @?= 0,
      testCase "529" $ binaryGap 529 @?= 4,
      testCase "1001" $ binaryGap 1001 @?= 2,
      testCase "32" $ binaryGap 32 @?= 0,
      testCase "42" $ binaryGap 42 @?= 1,
      testCase "328" $ binaryGap 328 @?= 2
    ]
