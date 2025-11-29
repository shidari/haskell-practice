-- file: ch01/WC.hs
-- lines beginning with "--" are comments.

-- main = interact wordCount
--     where wordCount input = show (length (lines input)) ++ "\n"
main :: IO ()
main = do
  contents <- readFile "hoge.txt"
  putStr (wordCount contents)
  where
    wordCount input = show (length (lines input)) ++ "\n"