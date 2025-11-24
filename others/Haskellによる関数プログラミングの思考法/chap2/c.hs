import Data.Char (toUpper)

-- 1. toUpper
-- 2. 単語のリストを文字列に変換する
-- 3. headとtailの結果を繋げる
capitalizeWords :: String -> String
capitalizeWords str =
  unwords
    $ map
      ( \word ->
          let h = head word
              t = tail word
           in toUpper h : t
      )
    $ words str

main :: IO ()
main = do
  let input = "hello world from haskell"
  let output = capitalizeWords input
  putStrLn output

-- 出力: "Hello World From Haskell"