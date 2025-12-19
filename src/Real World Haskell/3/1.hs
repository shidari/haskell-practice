data List a = Cons a (List a)
            | Nil
              deriving (Show)

fromList :: List a -> [a]
fromList Nil = []
fromList (Cons a rest) = a : fromList rest

main :: IO ()
main = do
    let myList = Cons 1 (Cons 2 (Cons 3 Nil))
    print $ fromList myList