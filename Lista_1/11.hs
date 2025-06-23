-- Faça uma função que calcule o mínimo múltiplo comum (MMC) de dois inteiros. Não vale usar função fornecida pelo Haskell.

mmc :: Int -> Int -> Int 
mmc a b = div (a*b) (mdc a b)

mdc :: Int -> Int -> Int
mdc a b
  | a == b = a
  | a > b  = mdc (a-b) b
  | a < b  = mdc b a

-- Explicação:
-- A função mmc calcula o mínimo múltiplo comum (MMC) de dois inteiros usando a fórmula:
--   MMC(a, b) = (a * b) / MDC(a, b)
-- Ou seja, multiplica os dois números e divide pelo máximo divisor comum deles.
--
-- A função mdc implementa o algoritmo de Euclides (igual ao exercício anterior):
--   - Se a == b, retorna a (ou b), pois é o MDC.
--   - Se a > b, chama mdc (a-b) b.
--   - Se a < b, chama mdc b a.
