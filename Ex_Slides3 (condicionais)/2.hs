-- Faça uma função que recebe 3 números e retorna o maior.

-- Usando if
maiorif :: Float -> Float -> Float -> Float
maiorif a b c = if a >= b then
                if a >= c then a 
                else c
              else 
                if b >= c then b 
                else c
  
-- Usando Guarda
maiorguarda :: Float -> Float -> Float -> Float
maiorguarda a b c
  | a >= b && a >= c = a 
  | b >= a && b >= c = b
  | otherwise = c
