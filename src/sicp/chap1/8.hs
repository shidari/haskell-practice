cubeRoot :: Double -> Double
cubeRoot x = cubeRoot_iter 1.0 x
  where
    cubeRoot_iter :: Double -> Double -> Double
    cubeRoot_iter guess x
      | is_good_enough guess = guess
      | otherwise = cubeRoot_iter (improve guess x) x
      where
        is_good_enough guess =
          let guess' = improve guess x
              diff = abs $ guess' - guess
           in diff < 0.001
        improve guess x = (x / (guess * guess) + 2 * guess) / 3

main :: IO ()
main = do
  -- 大きな数、小さな数で検証
  print $ cubeRoot 0.0004 -- 0.02
  print $ cubeRoot 1e10 -- 100000.0
  print $ cubeRoot 2.0 -- 約1.25992