--Crie uma função recursiva para dividir dois inteiros sem usar / ou div.

-- Usando if
divif :: Int -> Int -> Int
divif a b = if a < b 
  then 0 
  else 1 + divif (a-b) b

-- Usando case
divg :: Int -> Int -> Int
divg a b 
  | a < b = 0
  | otherwise = 1 + divg (a-b) b
