import System.Posix.Internals (c_getpid)
import Data.Char (digitToInt)
newtype CIN = CIN String 

type ErrorMessage = String 

mk :: String -> CIN
mk val@[_,_,_,_,_,_,_,_] = CIN $ val 
mk _ =  error $ "Invalid CIN format"

addSum :: CIN -> CIN 
addSum (CIN val@(_:_:_:_:_:_:_:_:_)) = 
    let total = sum $ map (\digit -> digitToInt digit ) val 
    in CIN $ val ++ show total 

valid :: CIN -> Bool
valid (CIN (val@([_,_,_,_,_,_,_,_]),(checksum@[_,_]))) = 
    let cinSum = sum val 
        checksum' = read checksum 
    in if cinSum == checksum' then True else False  