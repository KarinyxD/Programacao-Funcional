-- Fazer uma função que solicite 3 inteiros e retorna uma String com os números em ordem decrescente.

ordemDecrescente :: Int -> Int -> Int -> String
ordemDecrescente a b c
  | a >= b && b >= c = show a ++ " " ++ show b ++ " " ++ show c
  | a >= c && c >= b = show a ++ " " ++ show c ++ " " ++ show b
  | b >= a && a >= c = show b ++ " " ++ show a ++ " " ++ show c
  | b >= c && c >= a = show b ++ " " ++ show c ++ " " ++ show a
  | c >= a && a >= b = show c ++ " " ++ show a ++ " " ++ show b
  | otherwise = show c ++ " " ++ show b ++ " " ++ show a

