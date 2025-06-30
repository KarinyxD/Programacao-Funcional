-- 1. Crie a função quicksort usando a função filter.
-- 2. Crie uma função de alta ordem equivalente à função map.
-- 3. Crie uma função de alta ordem equivalente à função foldl.
-- 4. Crie uma função que recebe uma função f (Int->Int) e dois inteiros, x e n, e retorna
-- uma lista [x, f x, f (f x), f (f (f x)), ...] com n elementos.
-- 5. Crie uma função que recebe duas funções unárias f e g e uma lista e retorna uma lista
-- em que cada elemento é f(g(x)), sendo x um elemento da lista original.
-- 6. Crie uma função chamada zipw que recebe uma função binária f e duas listas x e y de
-- tamanhos iguais e retorna uma lista [ f x1 y1, f x2 y2, ... ].
-- 7. Na interface do GHCi, descubra como aplicar o operador == e a função mod usando
-- composição de funções para determinar se um número é par. Faça o mesmo usando a
-- função da questão 5

funAltaOrd :: (Int -> Int -> Int) -> Int -> Int -> Int
funAltaOrd f a b = f a b

filtra :: (Int -> Bool) -> [Int] -> [Int]
filtra _ [] = []
filtra f (a:b)
  | f a = a : filtra f b
  | otherwise = filtra f b

--Resolução professor:
--1
--comprensao de lista
-- quicksort [] =[]
-- quicksort (p:r) = 
--   quicksort[x | x <- r, x < p]
--   ++ [p] ++
--   quicksort[x | x <- r, x >= p]

-- --com filter
-- quicksort [] =[]
-- quicksort (p:r) = 
--   quicksort(filter (<p) r)
--   ++ [p] ++
--   quicksort(filter (>=p) r)

-- --2
-- meumap _ [] = []
-- meumap f (a:b) = f a : meumap f b --f é uma função

-- --3
-- meufoldl _ i [] = i
-- meufoldl f i (a:b) = meufoldl f (f i a) b

-- --meufoldl (+) 0 [1,2,3]
-- --meufold (+) (0+1) [2,3]
-- --meufold (+) (1+2) [3]
-- --meufold (+) (3+3) []

-- --4
-- fx :: (Int -> Int) -> Int -> Int -> [Int]
-- fx _ _ 0 = []
-- fx f x n = x : fx f (f x) (n-1)

-- --5
-- fg _ _ [] = []
-- fg f g (a:b) = (f . g) a : fg f g b

-- --6
-- zipw _ _ [] = []
-- zipw _ [] _ = []
-- zipw f (a:b) (c:d) = f a c : zipw f b d


--7