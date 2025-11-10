data Pair = Pair Int Int

make_rat :: Int -> Int -> Pair
make_rat n d =
  let g = gcd n d
   in case signum (n, d) of
        (1, 1) -> Pair (n `div` g) (d `div` g)
        (-1, -1) -> Pair (n `div` g) (d `div` g)
        (1, -1) -> Pair ((-n) `div` g) (d `div` g)
        (-1, 1) -> Pair ((-n) `div` g) (d `div` g)
        _ -> error "numerator and denominator cannot both be zero"

