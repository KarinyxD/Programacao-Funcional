-- 1. Crie uma função média que recebe uma lista e retorna a média dos elementos. Use definições
-- locais para calcular a soma e a quantidade dos elementos e, assim, obter a média.
media :: [Float] -> Float
media xs = soma xs / len xs
  where
    soma :: [Float] -> Float
    soma [] = 0.0
    soma (h:t) = h + soma t
    len :: [Float] -> Float
    len [] = 0.0 
    len (h:t) = 1 + len t

-- 2. Crie uma função que implementa o algoritmo selection sort, uma vez usando let...in e outra
-- usando where.
selectionlet :: [Float] -> [Float]
selectionlet [] = []
selectionlet [x] = [x]
selectionlet xs =
  let 
    menor :: [Float] -> Float
    menor [] = error "Lista vazia"
    menor [x] = x
    menor (h:t) = if h < menor t then h else menor t
    remove :: [Float] -> Float -> [Float]
    remove [] _ = []
    remove (h:t) x = if h == x then t else h : remove t x
  in 
    let m = menor xs 
    in m : selectionlet (remove xs m)

selectionwhere :: [Float] -> [Float]
selectionwhere [] = []
selectionwhere xs = 
  menor xs : selectionwhere (remove xs (menor xs)) 
  where 
    menor :: [Float] -> Float
    menor [] = error "Lista vazia"
    menor [x] = x
    menor (h:t) = if h < menor t then h else menor t
    remove :: [Float] -> Float -> [Float]
    remove [] _ = []
    remove (h:t) x = if h == x then t else h : remove t x

-- 3. Implemente o algoritmo merge sort usando definições locais.
mergesort :: [Float] -> [Float]
mergesort [] = []
mergesort [x] = [x]
mergesort xs = mergeAux (mergesort esq) (mergesort dir)

  where
    metade = length xs `div` 2
    esq = take metade xs 
    dir = drop metade xs
    mergeAux :: [Float] -> [Float] -> [Float]
    mergeAux [] right = right
    mergeAux left [] = left
    mergeAux (e:es) (d:ds) 
      | e < d = e : mergeAux es (d:ds)
      | otherwise = d : mergeAux (e:es) ds


-- 4. Implemente uma função que calcule o fibonacci usando recursão em cauda. Use uma definição
-- local para a função auxiliar.
fibonacciRecursivo :: Int -> Int
fibonacciRecursivo n = fiboAux n 0 1
  where
    fiboAux :: Int -> Int -> Int -> Int
    fiboAux 0 x _ = x 
    fiboAux n x y = fiboAux (n-1) y (x+y) 
