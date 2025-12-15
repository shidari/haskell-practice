main :: IO ()
main = do
  print $
    (fromIntegral 5 + fromIntegral 4 + (fromIntegral 2 - (fromIntegral 3 - (fromIntegral 6 + fromIntegral 4 / fromIntegral 5))))
      / (fromIntegral 3 * (fromIntegral 6 - fromIntegral 2) * (fromIntegral 2 - fromIntegral 7))