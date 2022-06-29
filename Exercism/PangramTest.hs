module Exercism.PangramTest where

import Exercism.Pangram (isPangram)
import Test.Tasty (TestTree, testGroup)
import Test.Tasty.HUnit (testCase, (@?=))

pangramTest :: TestTree
pangramTest =
    testGroup
        "pangram"
        [ testCase "with empty sentence" $ isPangram "" @?= False
        , testCase "with perfect lower case" $ isPangram "abcdefghijklmnopqrstuvwxyz" @?= True
        , testCase "with only lower case" $ isPangram "the quick brown fox jumps over the lazy dog" @?= True
        , testCase "with missing character 'x'" $ isPangram "a quick movement of the enemy will jeopardize five gunboats" @?= False
        , testCase "with missing character 'h'" $ isPangram "five boxing wizards jump quickly at it" @?= False
        , testCase "with underscores" $ isPangram "the_quick_brown_fox_jumps_over_the_lazy_dog" @?= True
        , testCase "with numbers" $ isPangram "the 1 quick brown fox jumps over the 2 lazy dogs" @?= True
        , testCase "with missing letters replaced by numbers" $ isPangram "7h3 qu1ck brown fox jumps ov3r 7h3 lazy dog" @?= False
        , testCase "with mixed case and punctuation" $ isPangram "\"Five quacking Zephyrs jolt my wax bed.\"" @?= True
        , testCase "with mixed case" $ isPangram "the quick brown fox jumps over with lazy FX" @?= False
        , testCase "with missing character and non-ascii letters" $ isPangram "abcdefghijklmnopqrstuvwxyÃ" @?= False
        , testCase "with additional non-ascii letters" $ isPangram "abcdefghijklmnopqrstuvwxyzÃ" @?= True
        ]
