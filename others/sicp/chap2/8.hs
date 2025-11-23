data Interval = Interval {lower :: Double, upper :: Double}

instance Show Interval where
  show (Interval l u) = "[" ++ show l ++ ", " ++ show u ++ "]"

makeInterval :: Double -> Double -> Interval
makeInterval l u = Interval l u

sub_interval :: Interval -> Interval -> Interval
sub_interval x y = makeInterval (lower x - upper y) (upper x - lower y)

main :: IO ()
main = do
  let interval1 = makeInterval 5.0 10.0
  let interval2 = makeInterval 2.0 3.0
  let result = sub_interval interval1 interval2
  print result  -- 結果: [2.0, 8.0]