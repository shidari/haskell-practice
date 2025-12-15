{- cabal:
build-depends: base, bytestring ^>= 0.11.3.1
-}

double :: Integer -> Integer
double x = x * 2 

-- sum :: [Integer] -> Integer 

-- sum . map double = double . sum 
-- list = [x1, x2, ..,xn]とする
-- 関数の適用結果を比較する
-- sum . map double list 
-- = sum [x1*2, x2*2, .., xn*2]
-- = sigma (xi*2) (i=1 to n)
-- = 2 * sigma (xi) (i=1 to n)
-- = double (sigma (xi) (i=1 to n))
-- = double . sum list
-- よって真

-- sum . map sum = sum . concat 
-- list = [[x11, x12, .., x1m], [x21, x22, .., x2m], .., [xn1, xn2, .., xnm]]とする
-- sum . map sum list 
-- sum [sigma (x1j) (j=1 to m), sigma (x2j) (j=1 to m), .., sigma (xnj) (j=1 to m)]
-- sigma (sigma (xij) (j=1 to m)) (i=1 to n)
-- sigma [xij] (i=1 to n, j=1 to m)
-- よって真
-- 足し算はモノイドで可換なので順番を入れ替えられる

-- sum . sort = sum 
-- これも結局、足し算が可換モノイドなので、順番を入れ替えても結果は変わらない
-- よって真

main :: IO ()
main = do 
    print $ map double [1,4,4,3] -- [2,8,8,6]
    print $ map (double . double) [1,4,4,3] -- [4,16,16,12]
    print $ map double [] -- []
