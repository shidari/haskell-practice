sqrt' :: Double -> Double
sqrt' x = sqrt_iter 1.0 x
  where
    sqrt_iter :: Double -> Double -> Double
    sqrt_iter guess x
      | is_good_enough guess x = guess
      | otherwise = sqrt_iter (improve guess x) x
      where
        is_good_enough guess x =
          let guess' = (guess + x / guess) / 2
              diff = abs $ guess' - guess
           in diff < 0.00001
        improve guess x = (guess + x / guess) / 2

main :: IO ()
main = do
    -- 大きな数、小さな数で検証
    print $ sqrt' 25.0      -- 5.0
    print $ sqrt' 0.0004    -- 0.02
    print $ sqrt' 1e10      -- 100000.0
    print $ sqrt' 2.0       -- 約1.41421