module Main where

import AdventOfCode.DiveTest (diveTest)
import AdventOfCode.ReportRepairTest (reportRepairTest)
import AdventOfCode.RocketEquationTest (rocketEquationTest)
import AdventOfCode.SonarSweepTest (sonarSweepTest)
import Codeforces.ReorderTest (reorderTest)
import Codewars.ConsecutiveStringsTest (consecutiveStringsTest)
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
import DMOJ.TriangleTimesTest (triangleTimesTest)
import Exercism.CollatzConjectureTest (collatzConjectureTest)
import Exercism.PangramTest (pangramTest)
import HackerRank.AlphabeticallySmallestTest (smallestStringTest)
import HackerRank.BalancedBracketsTest (balancedBracketsTest)
import HackerRank.CountingValleysTest (countingValleysTest)
import HackerRank.FibonacciTest (fibonacciTest)
import HackerRank.FirstRepeatedWordTest (firstRepeatedWordTest)
import HackerRank.PlusMinusTest (plusMinusTest)
import HackerRank.RepeatedStringTest (repeatedStringTest)
import HackerRank.SalesByMatchTest (salesByMatchTest)
import HackerRank.SlowestKeyPressTest (slowestKeyPressTest)
import HackerRank.TheJungleBookTest (theJungleBookTest)
import KickStart.EvenDigitsTest (evenDigitsTest)
import LeetCode.EvaluateReversePolishNotationTest (evaluateReversePolishNotationTest)
import LeetCode.LongestSubstringTest (longestSubstringTest)
import LeetCode.RichestCustomerWealthTest (maximumWealthTest)
import LeetCode.StringToIntegerTest (stringToIntegerTest)
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
        [ temperaturesTest
        , onboardingTest
        , theDescentTest
        , everywhereTest
        , freeFoodTest
        , toLowerTest
        , oddOrEvenTest
        , reverseRecursivelyTest
        , stringRepeatTest
        , evenDigitsTest
        , plusMinusTest
        , repeatedStringTest
        , binaryGapTest
        , oddOccurrencesInArrayTest
        , reorderTest
        , nextInLineTest
        , maximumWealthTest
        , horseRacingDualsTest
        , validParenthesesTest
        , firstRepeatedWordTest
        , slowestKeyPressTest
        , smallestStringTest
        , fibonacciTest
        , salesByMatchTest
        , balancedBracketsTest
        , countingValleysTest
        , longestSubstringTest
        , consecutiveStringsTest
        , pangramTest
        , collatzConjectureTest
        , theJungleBookTest
        , evaluateReversePolishNotationTest
        , stringToIntegerTest
        , triangleTimesTest
        , sonarSweepTest
        , diveTest
        , reportRepairTest
        , rocketEquationTest
        ]
