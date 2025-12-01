exp' :: Integer -> Integer -> Integer
exp' _ 0 = 1
exp' x n
    | n == 1 = x 
    | even n = let half = exp' x (n `div` 2) in half * half
    | odd n  = x * exp' x (n - 1)