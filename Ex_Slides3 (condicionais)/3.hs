-- Faça uma função que verifique se um ano é bissexto ou não. Um ano é bissexto se ele
-- for divisível por 400 ou é divisível por 4 mas não por 100.

-- Usando if
bissextoif :: Int -> Bool
bissextoif ano = 
  if (ano `mod` 400 == 0) then True 
  else if (ano `mod` 4 == 0) then
    if (ano `mod` 100 /= 0) then True 
    else False
  else False

-- Usando guardas
bissextoguarda :: Int -> Bool
bissextoguarda ano 
  | (ano `mod` 400 == 0) = True
  | (ano `mod` 4 == 0 && ano `mod` 100 /= 0) = True
  | otherwise = False
