module Main where

import           Test.Tasty
import           CodinGame.TemperaturesTest
import           CodinGame.OnboardingTest
import           CodinGame.TheDescentTest
import           OpenKattis.EverywhereTest
import           Codewars.OddOrEvenTest
import           Codewars.ReverseRecursivelyTest
import           Codewars.StringRepeatTest

main = defaultMain tests

tests = testGroup
    "wiyata-test"
    [ temperaturesTest
    , onboardingTest
    , theDescentTest
    , everywhereTest
    , oddOrEvenTest
    , reverseRecursivelyTest
    , stringRepeatTest
    ]
