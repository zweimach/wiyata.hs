module OpenKattis.ToLowerTest where

import OpenKattis.ToLower
import Test.Tasty
import Test.Tasty.HUnit

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
