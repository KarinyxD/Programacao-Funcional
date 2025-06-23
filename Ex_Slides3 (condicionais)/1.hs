--Crie uma função recursiva para dividir dois inteiros sem usar / ou div.

-- Usando if
divif :: Int -> Int -> Int
divif a b = if a < b then 0
else 1 + divif (a-b) b

-- Usando guarda
divguarda :: Int -> Int -> Int
divguarda a b
  | a < b = 0 
  | otherwise = 1 + divguarda (a - b) b
