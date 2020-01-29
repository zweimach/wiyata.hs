module OpenKattis.EverywhereTest where

import           Test.Tasty
import           Test.Tasty.HUnit
import           OpenKattis.Everywhere

everywhereTest :: TestTree
everywhereTest = testGroup
    "everywhere"
    [ testCase "one place"
    $   everywhere ["edmonton", "edmonton", "edmonton"]
    @?= 1
    , testCase "many places"
    $   everywhere
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
