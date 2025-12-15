import Control.Monad.State
makeAccumulator :: Int -> (Int -> State Int Int) 
makeAccumulator initialValue = \num -> do 
    currentValue <- get 
    let newValue = currentValue + num 
    put newValue 
    return newValue
main :: IO()
main = do 
    let a = makeAccumulator 5 
    print $ execState (a 3) 5
    print $ execState (a 5) 5
    print $ execState (a 10) 5
