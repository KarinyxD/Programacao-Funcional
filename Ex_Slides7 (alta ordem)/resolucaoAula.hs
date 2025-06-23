--1
--comprensao de lista
quicksort [] =[]
quicksort (p:r) = 
  quicksort[x | x <- r, x < p]
  ++ [p] ++
  quicksort[x | x <- r, x >= p]

--com filter
quicksort [] =[]
quicksort (p:r) = 
  quicksort(filter (<p) r)
  ++ [p] ++
  quicksort(filter (>=p) r)

--2
meumap _ [] = []
meumap f (a:b) = f a : meumap f b --f é uma função

--3
meufoldl _ i [] = i
meufoldl f i (a:b) = meufoldl f (f i a) b

--meufoldl (+) 0 [1,2,3]
--meufold (+) (0+1) [2,3]
--meufold (+) (1+2) [3]
--meufold (+) (3+3) []

--4
fx :: (Int -> Int) -> Int -> Int -> [Int]
fx _ _ 0 = []
fx f x n = x : fx f (f x) (n-1)

--5
fg _ _ [] = []
fg f g (a:b) = (f . g) a : fg f g b

--6
zipw _ _ [] = []
zipw _ [] _ = []
zipw f (a:b) (c:d) = f a c : zipw f b d


--7