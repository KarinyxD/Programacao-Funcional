-- Faça uma função que solicite 3 inteiros e os imprime em ordem crescente. Use show
-- para converter de inteiro para String.


ordemif :: Int -> Int -> Int -> String
ordemif a b c = 
  if (a >= b && b >= c) then show c ++ " " ++ show b ++ " " ++ show a
  else if (a >= c && c >= b) then show b ++ " " ++ show c ++ " " ++ show a 
  else if (b >= a && a >= c) then show c ++ " " ++ show a ++ " " ++ show b
  else if(b >= c && c >= a) then show a ++ " " ++ show c ++ " " ++ show b 
  else if (c >= a && a >= b) then show b ++ " " ++ show a ++ " " ++ show c
  else show a ++ " " ++ show b ++ " " ++ show c

ordemguarda :: Int -> Int -> Int -> String
ordemguarda a b c 
  | a >= b && b >= c = show c ++ " " ++ show b ++ " " ++ show a
  | a >= c && c >= b = show b ++ " " ++ show c ++ " " ++ show a
  | b >= a && a >= c = show c ++ " " ++ show a ++ " " ++ show b 
  | b >= c && c >= a = show a ++ " " ++ show c ++ " " ++ show b  
  | c >= a && a >= b = show b ++ " " ++ show a ++ " " ++ show c
  | otherwise = show a ++ " " ++ show b ++ " " ++ show c





