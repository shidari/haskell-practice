lastButOne :: [a] -> a
lastButOne [] = error "List is too short"
lastButOne [_] = error "List is too short"
lastButOne [a,_] = a 
lastButOne (_:xs) = lastButOne xs

-- main :: IO ()
-- main = do
--     print $ lastButOne [1,2,3,4]