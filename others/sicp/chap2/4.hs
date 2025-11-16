pair :: a -> b -> ((a -> b -> c) -> c)
pair x y = \f -> f x y

head' :: ((a -> b -> a) -> a) -> a
head' z = z (\x _ -> x)

tail' :: ((a -> b -> b) -> b) -> b 
tail' z = z (\_ y -> y )

main :: IO ()
main = do
  let p = pair 1 2
  print (head' p)
  print (tail' p)

--   print (tail' p)