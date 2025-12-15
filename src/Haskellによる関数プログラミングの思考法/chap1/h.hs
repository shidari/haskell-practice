import Text.Printf (printf)

song :: Int -> String
song n = if n == 0 then "" else song (n - 1) ++ verse n
  where
    verse n = line1 n ++ line2 n ++ line3 n ++ line4 n
    line1 n
      | n == 1 = show "One man went to mow\n"
      | n == 2 = show "Two men went to mow\n"
      | n == 3 = show "Three men went to mow\n"
      | n == 4 = show "Four men went to mow\n"
      | n == 5 = show "Five men went to mow\n"
      | n == 6 = show "Six men went to mow\n"
      | n == 7 = show "Seven men went to mow\n"
      | n == 8 = show "Eight men went to mow\n"
      | n == 9 = show "Nine men went to mow\n"
      | otherwise = error "Number out of range"
    line2 _ = "Went to mow a meadow\n"
    line3 n
      | n == 1 = "One man and his dog\n"
      | n == 2 = "Two men and their dogs\n"
      | n == 3 = "Three men and their dogs\n"
      | n == 4 = "Four men and their dogs\n"
      -- 9まで
      | n == 5 = "Five men and their dogs\n"
      | n == 6 = "Six men and their dogs\n"
      | n == 7 = "Seven men and their dogs\n"
      | n == 8 = "Eight men and their dogs\n"
      | n == 9 = "Nine men and their dogs\n"
      | otherwise = error "Number out of range"
    line4 _ = "Went to mow a meadow\n"

main :: IO ()
main = putStrLn (song 9)