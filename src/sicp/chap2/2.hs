{- cabal:
build-depends: base, bytestring ^>= 0.11.3.1
-}

data Point = Point {x :: Int, y :: Int}

instance Show Point where
  show (Point x y) = "(" ++ show x ++ ", " ++ show y ++ ")"

mkPoint :: Int -> Int -> Point
mkPoint = Point

data Segment = Segment {start :: Point, end :: Point}

mkSegment :: Point -> Point -> Segment
mkSegment = Segment

midSegment :: Segment -> Point
midSegment (Segment (Point x1 y1) (Point x2 y2)) =
  Point ((x1 + x2) `div` 2) ((y1 + y2) `div` 2)

main :: IO ()
main = do
  let p1 = mkPoint 1 2
  let p2 = mkPoint 5 6
  let seg = mkSegment p1 p2
  print $ midSegment seg -- Output: (3, 4)