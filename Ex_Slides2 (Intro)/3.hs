-- Implemente uma função que calcula a soma de inteiros não negativos usando as funções 
-- sucessor (succ) e predecessor (pred).

soma :: Int -> Int -> Int
soma 0 b = b 
soma a b = soma (pred a) (succ b)

-- soma 0 b = b
--   Se o primeiro número for 0, retorna o segundo número (caso base da recursão).

-- soma a b = soma (pred a) (succ b)
--   Se o primeiro número não for 0, diminui 'a' em 1 (pred a) e aumenta 'b' em 1 (succ b), e chama a função de novo.
--   Isso repete até 'a' virar 0, acumulando o resultado em 'b'.
-- Exemplo: soma 3 4
--   soma 3 4 = soma 2 5
--   soma 2 5 = soma 1 6
--   soma 1 6 = soma 0 7
--   soma 0 7 = 7
-- Resultado: 7


