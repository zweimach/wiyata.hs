module OpenKattis.EverywhereTest where

import OpenKattis.Everywhere (everywhere)
import Test.Tasty (TestTree, testGroup)
import Test.Tasty.HUnit (testCase, (@?=))

everywhereTest :: TestTree
everywhereTest =
    testGroup
        "everywhere"
        [ testCase "one place" $
            everywhere ["edmonton", "edmonton", "edmonton"]
                @?= 1
        , testCase "many places" $
            everywhere
                [ "saskatoon"
                , "toronto"
                , "winnipeg"
                , "toronto"
                , "vancouver"
                , "saskatoon"
                , "toronto"
                ]
                @?= 4
        ]
