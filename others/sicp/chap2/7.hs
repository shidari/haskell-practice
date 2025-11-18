data Interval = Interval {lower :: Double, upper :: Double}

makeInterval :: Double -> Double -> Interval
makeInterval l u = Interval l u

upperBound :: Interval -> Double
upperBound (Interval _ u) = u

lowerBound :: Interval -> Double
lowerBound (Interval l _) = l

main :: IO ()
main = do
  let interval = makeInterval 1.0 3.0
  print (lowerBound interval)  -- 結果: 1.0
  print (upperBound interval)  -- 結果: 3.0