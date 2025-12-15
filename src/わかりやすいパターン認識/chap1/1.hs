type Mesh5x5Matrix = [[Int]]

pattern1 :: Mesh5x5Matrix
pattern1 =
  [ [0, 0, 1, 0, 0],
    [0, 0, 1, 0, 0],
    [0, 0, 1, 0, 0],
    [0, 0, 1, 0, 0],
    [0, 0, 1, 0, 0]
  ]

pattern2 :: Mesh5x5Matrix
pattern2 =
  [ [0, 1, 1, 1, 1, 0],
    [1, 0, 0, 1, 0],
    [1, 1, 1, 1, 0],
    [0, 0, 0, 0, 1],
    [1, 1, 1, 1, 0]
  ]

pattern3 :: Mesh5x5Matrix
pattern3 =
  [ [0, 1, 1, 1, 0],
    [1, 0, 0, 0, 1],
    [0, 0, 1, 1, 0],
    [1, 0, 0, 0, 1],
    [0, 1, 1, 1, 0]
  ]

pattern4 :: Mesh5x5Matrix
pattern4 =
  [ [0, 0, 1, 0, 0],
    [0, 1, 0, 0, 0],
    [1, 0, 0, 1, 0],
    [1, 1, 1, 1, 1],
    [0, 0, 0, 1, 0]
  ]

pattern5 :: Mesh5x5Matrix
pattern5 =
  [ [1, 1, 1, 1, 1],
    [1, 0, 0, 0, 0],
    [1, 1, 1, 1, 0],
    [0, 0, 0, 0, 1],
    [1, 1, 1, 1, 0]
  ]

pattern6 :: Mesh5x5Matrix
pattern6 =
  [ [0, 0, 1, 1, 0],
    [0, 1, 0, 0, 0],
    [1, 1, 1, 1, 0],
    [1, 0, 0, 0, 1],
    [0, 1, 1, 1, 0]
  ]

pattern7 :: Mesh5x5Matrix
pattern7 =
  [ [1, 1, 1, 1, 1],
    [1, 0, 0, 1, 0],
    [0, 0, 1, 0, 0],
    [0, 1, 0, 0, 0],
    [1, 0, 0, 0, 0]
  ]

pattern8 :: Mesh5x5Matrix
pattern8 =
  [ [0, 1, 1, 1, 0],
    [1, 0, 0, 0, 1],
    [0, 1, 1, 1, 0],
    [1, 0, 0, 0, 1],
    [0, 1, 1, 1, 0]
  ]

pattern9 :: Mesh5x5Matrix
pattern9 =
  [ [0, 1, 1, 1, 0],
    [1, 0, 0, 0, 1],
    [0, 1, 1, 1, 1],
    [0, 0, 0, 1, 0],
    [0, 0, 1, 0, 0]
  ]

pattern0 :: Mesh5x5Matrix
pattern0 =
  [ [0, 1, 1, 1, 0],
    [1, 0, 0, 0, 1],
    [1, 0, 0, 0, 1],
    [1, 0, 0, 0, 1],
    [0, 1, 1, 1, 0]
  ]

sample1 :: Mesh5x5Matrix
sample1 =
  [ [0, 1, 1, 1, 0],
    [0, 1, 0, 1, 0],
    [0, 0, 1, 0, 0],
    [0, 1, 0, 0, 0],
    [1, 1, 1, 1, 1]
  ]

sample2 :: Mesh5x5Matrix
sample2 =
  [ [0, 1, 0, 0, 0],
    [0, 1, 0, 1, 0],
    [1, 1, 1, 1, 1],
    [0, 0, 0, 1, 0],
    [0, 0, 0, 1, 0]
  ]

sample3 :: Mesh5x5Matrix
sample3 =
  [ [0, 1, 1, 1, 1],
    [1, 0, 0, 1, 0],
    [0, 0, 0, 1, 0],
    [0, 0, 1, 0, 0],
    [0, 1, 0, 0, 0]
  ]

sample4 :: Mesh5x5Matrix
sample4 =
  [ [0, 1, 0, 1, 0],
    [1, 1, 1, 1, 1],
    [0, 1, 0, 1, 0],
    [0, 1, 1, 1, 0],
    [1, 1, 0, 1, 1]
  ]

data Pattern = Zero | One | Two | Three | Four | Five | Six | Seven | Eight | Nine deriving (Eq, Show, Enum)

nn :: Mesh5x5Matrix -> Pattern
nn m = toEnum $ minimum $ [diff m pattern | pattern <- [pattern0, pattern1, pattern2, pattern3, pattern4, pattern5, pattern6, pattern7, pattern8, pattern9]]
  where
    diff :: Mesh5x5Matrix -> Mesh5x5Matrix -> Int
    diff m1 m2 = sum [abs (a - b) | (row1, row2) <- zip m1 m2, (a, b) <- zip row1 row2]


main :: IO ()main = do
  let testPatterns = [sample1, sample2, sample3, sample4]
  mapM_                                             