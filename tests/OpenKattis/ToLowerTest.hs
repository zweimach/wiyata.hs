module OpenKattis.ToLowerTest where

import OpenKattis.ToLower (toLower')
import Test.Tasty (TestTree, testGroup)
import Test.Tasty.HUnit (testCase, (@?=))

toLowerTest :: TestTree
toLowerTest =
  testGroup
    "toLower"
    [ testCase "[[\"abc\", \"Def\"], [\"DDG\", \"add\"]]" $
        toLower' [["abc", "Def"], ["DDG", "add"]]
          @?= 1,
      testCase
        "[[\"abc\", \"Def\"], [\"pok\", \"Add\"], [\"Aabc\", \"Zee\", \"Tac\"]]"
        $ toLower' [["abc", "Def"], ["pok", "Add"], ["Aabc", "Zee", "Tac"]]
          @?= 3
    ]
