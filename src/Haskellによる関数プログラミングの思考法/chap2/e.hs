first :: (t -> Bool) -> [t] -> Maybe t
first p xs
  | null xs = Nothing
  | otherwise = Just $ head $ filter p xs
