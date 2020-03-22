module Main where

import Codewars.OddOrEvenTest
import Codewars.ReverseRecursivelyTest
import Codewars.StringRepeatTest
import Codility.BinaryGapTest
import Codility.OddOccurrencesInArrayTest
import CodinGame.OnboardingTest
import CodinGame.TemperaturesTest
import CodinGame.TheDescentTest
import HackerRank.PlusMinusTest
import HackerRank.RepeatedStringTest
import KickStart.EvenDigitsTest
import OpenKattis.EverywhereTest
import OpenKattis.FreeFoodTest
import OpenKattis.ToLowerTest
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
      freeFoodTest,
      toLowerTest,
      oddOrEvenTest,
      reverseRecursivelyTest,
      stringRepeatTest,
      evenDigitsTest,
      plusMinusTest,
      binaryGapTest,
      oddOccurrencesInArrayTest
    ]
