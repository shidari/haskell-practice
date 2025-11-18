data Z = Plus Int | Minus Int

aPlusAbsB :: Int -> Z -> Int
aPlusAbsB a (Plus b) = a + b
aPlusAbsB a (Minus b) = a + abs b

-- a = 2 b = 2の場合
-- aPlusAbsB 2 (Plus 2) 
-- 2 + 2 
-- 4 

-- a = 2 b = -2の場合
-- aPlusAbsB 2 (Minus 2)
-- 2 + abs (-2)
-- 2 + 2
-- 4
    