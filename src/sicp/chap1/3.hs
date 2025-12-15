import Data.List (sort)

fn :: (Ord a, Floating a) => a -> a -> a -> a
fn x y z = let [_, a, b] = sort [x, y, z] in (sqrt a) + (sqrt b)

main :: IO ()
main = do
  print (fn 9 2 7)
  print (fn 1 2 3)
  print (fn 5 5 5)