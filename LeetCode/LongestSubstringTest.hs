module LeetCode.LongestSubstringTest where

import LeetCode.LongestSubstring (lengthOfLongestSubstring)
import Test.Tasty (TestTree, testGroup)
import Test.Tasty.HUnit (testCase, (@?=))

longestSubstringTest :: TestTree
longestSubstringTest =
    testGroup
        "longestSubstring"
        [ testCase "abcabcbb" $ lengthOfLongestSubstring "abcabcbb" @?= 3
        , testCase "bbbb" $ lengthOfLongestSubstring "bbbb" @?= 1
        , testCase "pwwkew" $ lengthOfLongestSubstring "pwwkew" @?= 3
        , testCase "" $ lengthOfLongestSubstring "" @?= 0
        , testCase "ohvhjdml" $ lengthOfLongestSubstring "ohvhjdml" @?= 6
        ]
