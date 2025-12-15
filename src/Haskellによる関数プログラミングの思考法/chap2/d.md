head(map f xs)

Beaverの場合
先にmap f xsが評価されるので、n回

Suanの場合
head (map f xs)
= head (f x : map f (xRest))
= f x 
なので、1回

Beaverで計算回数を減らすとすると、f (head xs) がよい

head . filter p をBeaverでやると、Beaverはいったん全ての要素を判定しなきゃいけなく、余計な計算が多くなる
なので

first (a -> Bool) -> [a] -> a 
として
first p xs 
    | null xs = error "empty list"
    | otherwise = let (x':xs') = xs in if p x' then x' else first p xs' 
と書く。

また、Beaver用のhead . filter p は
first p となる