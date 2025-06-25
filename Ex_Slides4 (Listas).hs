-- Obs: não defina o cabeçalho das funções deste exercício para que funcionem com qualquer tipo
-- 1. Crie uma função que faz a mesma coisa que a função length.
length2 :: [Int] -> Int
length2 [] = 0
length2 (_:t) = 1 + length2 t

-- 2. Crie uma função que recebe um caractere c e um inteiro n e retorna uma String em que
-- c ocorre n vezes.
ocorre :: Char -> Int -> String
ocorre _ 0 = []
ocorre c n = c : ocorre c (n-1)

-- 3. Crie uma função que recebe uma lista e retorna uma lista que possui somente os
-- elementos maiores que a média deles.
maiormedia :: [Int] -> [Int]
maiormedia [] = []
maiormedia x = maiormediaAux x (media x)

maiormediaAux :: [Int] -> Int -> [Int]
maiormediaAux [] _ = []
maiormediaAux (h:t) media =
  if h > media
    then h : maiormediaAux t media
    else maiormediaAux t media

media :: [Int] -> Int
media [] = 0 
media x = soma x `div` length2 x

soma :: [Int] -> Int
soma [] = 0
soma (h:t) = h + soma t

-- 4. Crie uma função que faz a mesma coisa que a função elem.
-- elem: recebe um elemento e uma lista retorna True se a lista contém o elemento ou False, caso o
-- elemento não exista na lista
elem2 :: Int -> [Int] -> Bool
elem2 _ [] = False
elem2 x (h:t) = 
  if (x == h) then True
  else elem2 x t

-- 5. Crie uma função que faz a mesma coisa que função reverse.
-- inverte a lista
reverse2 :: [Int] -> [Int]
reverse2 [] = []
reverse2 (h:t) = reverse2 t ++ [h]

-- 6. Crie uma função que recebe uma lista e um inteiro e retorna a lista organizada em uma
-- lista de listas de tamanho n.
org ::  Int -> [Int] -> [[Int]]
org _ [] = []
org 0 _ = []
org x xs = take x xs : org x (drop x xs)

-- 7. Crie uma função que implemente o algoritmo de selectionsort.
selectionSort :: [Int] -> [Int]
selectionSort [] = []
selectionSort (h:t) = 
  minimum (h:t) : selectionSort (removeMinElem (h:t))

removeMinElem :: [Int] -> [Int]
removeMinElem [] = []
removeMinElem (h:t) =
  if minimum (h:t) == h then t
  else h : removeMinElem t




