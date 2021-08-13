module Main where

import Codeforces.ReorderTest (reorderTest)
import Codewars.OddOrEvenTest (oddOrEvenTest)
import Codewars.ReverseRecursivelyTest (reverseRecursivelyTest)
import Codewars.StringRepeatTest (stringRepeatTest)
import Codility.BinaryGapTest (binaryGapTest)
import Codility.OddOccurrencesInArrayTest (oddOccurrencesInArrayTest)
import CodinGame.HorseRacingDualsTest (horseRacingDualsTest)
import CodinGame.OnboardingTest (onboardingTest)
import CodinGame.TemperaturesTest (temperaturesTest)
import CodinGame.TheDescentTest (theDescentTest)
import DMOJ.NextInLineTest (nextInLineTest)
import HackerRank.PlusMinusTest (plusMinusTest)
import HackerRank.RepeatedStringTest (repeatedStringTest)
import KickStart.EvenDigitsTest (evenDigitsTest)
import LeetCode.RichestCustomerWealthTest (maximumWealthTest)
import LeetCode.ValidParenthesesTest (validParenthesesTest)
import OpenKattis.EverywhereTest (everywhereTest)
import OpenKattis.FreeFoodTest (freeFoodTest)
import OpenKattis.ToLowerTest (toLowerTest)
import Test.Tasty (TestTree, defaultMain, testGroup)

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
      repeatedStringTest,
      binaryGapTest,
      oddOccurrencesInArrayTest,
      reorderTest,
      nextInLineTest,
      maximumWealthTest,
      horseRacingDualsTest,
      validParenthesesTest
    ]
