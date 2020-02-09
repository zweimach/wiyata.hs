module Main where

import Codewars.OddOrEvenTest
import Codewars.ReverseRecursivelyTest
import Codewars.StringRepeatTest
import CodinGame.OnboardingTest
import CodinGame.TemperaturesTest
import CodinGame.TheDescentTest
import OpenKattis.EverywhereTest
import Test.Tasty

main :: IO ()
main = defaultMain tests

tests :: TestTree
tests =
  testGroup
    "wiyata-test"
    [ temperaturesTest,
      onboardingTest,
      theDescentTest,
      everywhereTest,
      oddOrEvenTest,
      reverseRecursivelyTest,
      stringRepeatTest
    ]
