data Interval = Interval {lower :: Double, upper :: Double}

makeInterval :: Double -> Double -> Interval
makeInterval l u = Interval l u

mulInteval :: Interval -> Interval -> Interval
mulInteval (Interval l1 u1) (Interval l2 u2) =
  let lower = minimum $ [a * b | a <- [l1, u1], b <- [l2, u2]]
      upper = maximum $ [a * b | a <- [l1, u1], b <- [l2, u2]]
   in Interval lower upper

upperBound :: Interval -> Double
upperBound (Interval _ u) = u

lowerBound :: Interval -> Double
lowerBound (Interval l _) = l

divInterval :: Interval -> Interval -> Interval
divInterval x y
  | upperBound y == 0 || lowerBound y == 0 = error "Division by interval containing zero"
  | otherwise = mulInteval x (makeInterval (1 / upperBound y) (1 / lowerBound y))

main :: IO ()
main = do
    let interval1 = makeInterval 1.0 3.0
    let interval2 = makeInterval 2.0 4.0
    let resultMul = mulInteval interval1 interval2
    putStrLn $ "Multiplication Result: [" ++ show (lowerBound resultMul) ++ ", " ++ show (upperBound resultMul) ++ "]"
    let resultDiv = divInterval interval1 interval2
    putStrLn $ "Division Result: [" ++ show (lowerBound resultDiv) ++ ", " ++ show (upperBound resultDiv) ++ "]"