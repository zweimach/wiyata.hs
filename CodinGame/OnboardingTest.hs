module CodinGame.OnboardingTest (onboardingTest) where

import CodinGame.Onboarding (onboarding)
import Test.Tasty (TestTree, testGroup)
import Test.Tasty.HUnit (testCase, (@?=))

onboardingTest :: TestTree
onboardingTest =
    testGroup
        "onboarding"
        [ testCase "(\"e1\", 12) (\"e2\", 10)" $
            onboarding ("e1", 12) ("e2", 10) @?= "e2"
        , testCase "(\"e3\", 15) (\"e4\", 20)" $
            onboarding ("e3", 15) ("e4", 20) @?= "e3"
        ]
