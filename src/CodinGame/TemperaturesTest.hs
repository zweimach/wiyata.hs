module CodinGame.TemperaturesTest where

import           Test.Tasty
import           Test.Tasty.HUnit
import           CodinGame.Temperatures

temperaturesTest = testGroup
    "temperatures"
    [ testCase "[1, -2, -8, 4, 5]" $ temperatures [1, -2, -8, 4, 5] @?= 1
    , testCase "[-12, -5, -137]" $ temperatures [-12, -5, -137] @?= -5
    , testCase "[42, -5, 12, 21, 5, 24]"
    $   temperatures [42, -5, 12, 21, 5, 24]
    @?= 5
    , testCase "[42, 5, 12, 21, -5, 24]"
    $   temperatures [42, 5, 12, 21, -5, 24]
    @?= 5
    , testCase "[-5, -4, -2, 12, -40, 4, 2, 18, 11, 5]"
    $   temperatures [-5, -4, -2, 12, -40, 4, 2, 18, 11, 5]
    @?= 2
    , testCase "[]" $ temperatures [] @?= 0
    ]
