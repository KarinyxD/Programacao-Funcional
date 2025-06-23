-- Faça uma função que lê um inteiro e mostra uma mensagem indicando se este número é par ou ímpar.

-- sem usar odd
imparpar :: Int -> String
imparpar x = 
  if (x `mod` 2 == 0) then "par"
  else "impar"


--usando odd
imparparodd :: Int -> String
imparparodd x = 
  if odd x then "impar"
  else "par"