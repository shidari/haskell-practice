ghci> :t False
False :: Bool

ghci> :t (["foo", "bar"], 'a')
(["foo", "bar"], 'a') :: ([String], Char)

ghci> :t [(True, []), (False, [['a']])]
[(True, []), (False, [['a']])] :: [(Bool, [[Char]])]