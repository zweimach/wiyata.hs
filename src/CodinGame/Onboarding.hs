module CodinGame.Onboarding where

onboarding :: (String, Int) -> (String, Int) -> String
onboarding (enemy1, dist1) (enemy2, dist2)
  | dist1 < dist2 = enemy1
  | otherwise = enemy2
