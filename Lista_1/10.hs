-- Faça uma função que calcule o máximo divisor comum (MDC) de dois inteiros. Não vale usar função fornecida pelo Haskell.

mdc :: Int -> Int -> Int
mdc a b
  | a == b = a
  | a > b  = mdc (a-b) b
  | a < b  = mdc b a

-- Explicação:
-- O código implementa o algoritmo de Euclides para calcular o MDC (máximo divisor comum) de dois inteiros.
-- A ideia é:
--   - Se os dois números são iguais, o MDC é esse número.
--   - Se a > b, subtrai b de a e chama mdc novamente.
--   - Se a < b, troca a ordem dos argumentos para garantir que o maior fica primeiro.
-- Isso se repete até os dois números ficarem iguais.

-- Exemplo: mdc 18 12
-- mdc 18 12 -> a > b, então mdc (18-12) 12 = mdc 6 12