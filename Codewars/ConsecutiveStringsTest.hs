module Codewars.ConsecutiveStringsTest where

import Codewars.ConsecutiveStrings (longestConsec)
import Test.Tasty (TestTree, testGroup)
import Test.Tasty.HUnit (testCase, (@?=))

consecutiveStringsTest :: TestTree
consecutiveStringsTest =
    testGroup
        "consecutiveStrings"
        [ testCase "A" $ longestConsec ["zone", "abigail", "theta", "form", "libe", "zas", "theta", "abigail"] 2 @?= "abigailtheta"
        , testCase "B" $ longestConsec ["ejjjjmmtthh", "zxxuueeg", "aanlljrrrxx", "dqqqaaabbb", "oocccffuucccjjjkkkjyyyeehh"] 1 @?= "oocccffuucccjjjkkkjyyyeehh"
        , testCase "C" $ longestConsec ["itvayloxrp", "wkppqsztdkmvcuwvereiupccauycnjutlv", "vweqilsfytihvrzlaodfixoyxvyuyvgpck"] 2 @?= "wkppqsztdkmvcuwvereiupccauycnjutlvvweqilsfytihvrzlaodfixoyxvyuyvgpck"
        , testCase "D" $ longestConsec ["wlwsasphmxx", "owiaxujylentrklctozmymu", "wpgozvxxiu"] 2 @?= "wlwsasphmxxowiaxujylentrklctozmymu"
        , testCase "E" $ longestConsec ["it", "wkppv", "ixoyx", "3452", "zzzzzzzzzzzz"] 3 @?= "ixoyx3452zzzzzzzzzzzz"
        , testCase "F" $ longestConsec [] 3 @?= ""
        , testCase "G" $ longestConsec ["it", "wkppv", "ixoyx", "3452", "zzzzzzzzzzzz"] 15 @?= ""
        , testCase "H" $ longestConsec ["it", "wkppv", "ixoyx", "3452", "zzzzzzzzzzzz"] 0 @?= ""
        ]
