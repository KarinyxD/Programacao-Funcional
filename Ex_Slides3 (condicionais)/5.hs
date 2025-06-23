-- Faça uma função que lê 2 inteiros e verifica se eles são múltiplos ou não.

--usando if
multiploif :: Int -> Int -> Bool
multiploif a b = if (a `mod` b /= 0) then False
  else True

--usando guarda
multiploguarda :: Int -> Int -> Bool
multiploguarda a b 
  | a `mod` b == 0 = True
  | otherwise = False