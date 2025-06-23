-- Faça uma função que calcule a multiplicação de dois inteiros positivos utilizando apenas a operação de soma e recursão.

multiplica :: Int -> Int -> Int
multiplica a b 
  | a < 0 || b <= 0 = 0
  | b == 0 = 0
  | otherwise = a + (multiplica a (b-1))
