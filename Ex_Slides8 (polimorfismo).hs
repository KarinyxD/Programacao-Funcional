import Data.Maybe
-- 1. Crie funções que fazem a mesma coisa que as funções take e drop usando tipos polimórficos.
take2 :: Int -> [a] -> [a]
take2 _ [] = []
take2 0 xs = []
take2 x (h:t) = h : take2 (x-1) t

drop2 :: Int -> [a] -> [a]
drop2 _ [] = []
drop2 0 xs = xs
drop2 x (h:t) = drop2 (x-1) t 


-- 2. Crie uma função que faz a mesma coisa que o operador ++ usando tipos polimórficos.

-- 3. Crie uma função que faz a mesma coisa que a função last usando tipos polimórficos e retornando
-- Nothing caso receba uma lista vazia.
last2 :: [a] -> Maybe a
last2 [] = Nothing
last2 [x] = Just x
last2 (_:t) = last2 t

-- 4. Crie uma função que recebe uma lista e retorne o menor elemento. Use tipos qualificados e trate
-- a possibilidade da lista ser vazia.
menorelem :: Ord a => [a] -> Maybe a 
menorelem [] = Nothing
menorelem (h:t) = Just (menoraux h t)
  where 
    menoraux m [] = m
    menoraux m (h:t) = if h < m then menoraux h t else menoraux m t

-- 5. Crie uma função que implementa o algoritmo bubblesort sobre uma lista de qualquer tipo ordenado.