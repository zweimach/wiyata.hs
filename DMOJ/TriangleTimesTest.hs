module DMOJ.TriangleTimesTest where

import DMOJ.TriangleTimes (triangleTimes)
import Test.Tasty (TestTree, testGroup)
import Test.Tasty.HUnit (testCase, (@?=))

triangleTimesTest :: TestTree
triangleTimesTest =
    testGroup
        "triangleTimes"
        [ testCase "60 70 50" $ triangleTimes 60 70 50 @?= "Scalene"
        , testCase "60 75 55" $ triangleTimes 60 75 55 @?= "Error"
        , testCase "60 60 60" $ triangleTimes 60 60 60 @?= "Equilateral"
        , testCase "70 70 40" $ triangleTimes 70 70 40 @?= "Isosceles"
        , testCase "45 45 90" $ triangleTimes 45 45 90 @?= "Isosceles"
        ]
