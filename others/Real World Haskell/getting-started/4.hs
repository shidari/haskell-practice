-- file: ch01/WC.hs
-- lines beginning with "--" are comments.

-- main = interact wordCount
--     where wordCount input = show (length (lines input)) ++ "\n"
main :: IO ()
main = do
  contents <- readFile "./others/Real World Haskell/getting-started/hoge.txt"
  print (show (charCount contents) ++ "\n")
  where
    charCount :: String -> Int
    charCount input = length input