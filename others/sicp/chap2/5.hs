data Pair = Pair {z :: Int}

pair :: Int -> Int -> Pair
pair x y = Pair (2 ^ x * 3 ^ y)

head' :: Pair -> Int
head' (Pair z) = length $ takeWhile (\x -> x `mod` 2 == 0) (iterate (`div` 2) z)

tail' :: Pair -> Int
tail' (Pair z) = length $ takeWhile (\x -> x `mod` 3 == 0) (iterate (`div` 3) z)

main :: IO ()
main = do
  let p = pair 4 9
  print (head' p)
  print (tail' p)