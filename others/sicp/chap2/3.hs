{- cabal:
build-depends: base, bytestring ^>= 0.11.3.1
-}

data Point = Point {x :: Int, y :: Int}

mkPoint :: Int -> Int -> Point
mkPoint = Point

data Rectangle = Rectangle1 {bottomLeft :: Point, topRight :: Point} | Rectangle2 {origin :: Point, width :: Int, height :: Int}

mkRectangle1 :: Point -> Point -> Rectangle
mkRectangle1 = Rectangle1

mkRectangle2 :: Point -> Int -> Int -> Rectangle
mkRectangle2 = Rectangle2

area :: Rectangle -> Int
area (Rectangle1 (Point x1 y1) (Point x2 y2)) =
  let width = x2 - x1
      height = y2 - y1
   in width * height
area (Rectangle2 (Point x y) w h) = w * h

perimeter :: Rectangle -> Int
perimeter (Rectangle1 (Point x1 y1) (Point x2 y2)) =
  let width = x2 - x1
      height = y2 - y1
   in 2 * (width + height)
perimeter (Rectangle2 (Point x y) w h) = 2 * (w + h)

main :: IO ()
main = do
  let p1 = mkPoint 1 1
  let p2 = mkPoint 5 4
  let rect1 = mkRectangle1 p1 p2
  print $ area rect1 -- Output: 12
  print $ perimeter rect1 -- Output: 14
  let rect2 = mkRectangle2 p1 4 3
  print $ area rect2 -- Output: 12
  print $ perimeter rect2 -- Output: 14
