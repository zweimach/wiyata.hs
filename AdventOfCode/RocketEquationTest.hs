module AdventOfCode.RocketEquationTest where

import AdventOfCode.RocketEquation (
    rocketEquation,
    rocketEquationPartTwo,
 )
import Test.Tasty (TestTree, testGroup)
import Test.Tasty.HUnit (testCase, (@?=))

rocketEquationTest :: TestTree
rocketEquationTest =
    testGroup
        "rocketEquation"
        [ testCase "part 1 - small" $ rocketEquation smallInput @?= 34241
        , testCase "part 1 - large" $ rocketEquation largeInput @?= 3184233
        , testCase "part 2 - small" $ rocketEquationPartTwo smallInput @?= 51316
        , testCase "part 2 - large" $ rocketEquationPartTwo largeInput @?= 4773483
        ]

smallInput :: [Int]
smallInput = [12, 14, 1969, 100756]

largeInput :: [Int]
largeInput =
    [ 71407
    , 81197
    , 76198
    , 74252
    , 72416
    , 84763
    , 50109
    , 94285
    , 120589
    , 63022
    , 125821
    , 98807
    , 119795
    , 128182
    , 59505
    , 71577
    , 148454
    , 62504
    , 69879
    , 94627
    , 113053
    , 116212
    , 135361
    , 89835
    , 104648
    , 74343
    , 131401
    , 143696
    , 71891
    , 77750
    , 70549
    , 65354
    , 137408
    , 63526
    , 58679
    , 55834
    , 110914
    , 118013
    , 107422
    , 135027
    , 147523
    , 75502
    , 88890
    , 68982
    , 76256
    , 113357
    , 97845
    , 114557
    , 77538
    , 82036
    , 107707
    , 91224
    , 123240
    , 109997
    , 99615
    , 54872
    , 144766
    , 59363
    , 82870
    , 78971
    , 58341
    , 100286
    , 55403
    , 101399
    , 128763
    , 68876
    , 114973
    , 116935
    , 78603
    , 75321
    , 86036
    , 146089
    , 66557
    , 112169
    , 79699
    , 89839
    , 142146
    , 55840
    , 131197
    , 50455
    , 92262
    , 62094
    , 132344
    , 113253
    , 94504
    , 84757
    , 87485
    , 109422
    , 81599
    , 129372
    , 107622
    , 121506
    , 57286
    , 124121
    , 126350
    , 120381
    , 126424
    , 110346
    , 75626
    , 94308
    ]
