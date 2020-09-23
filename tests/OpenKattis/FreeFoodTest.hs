module OpenKattis.FreeFoodTest where

import OpenKattis.FreeFood (freeFood)
import Test.Tasty (TestTree, testGroup)
import Test.Tasty.HUnit (testCase, (@?=))

freeFoodTest :: TestTree
freeFoodTest =
  testGroup
    "freeFood"
    [ testCase "[(10, 14), (13, 17), (25, 26)]" $
        freeFood [(10, 14), (13, 17), (25, 26)]
          @?= 10,
      testCase "[(1, 365), (20, 28)]" $ freeFood [(1, 365), (20, 28)] @?= 365,
      testCase "[(29, 29), (48, 48), (102, 102), (94, 94)]" $
        freeFood [(29, 29), (48, 48), (102, 102), (94, 94)]
          @?= 4
    ]
