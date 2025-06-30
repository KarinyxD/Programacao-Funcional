-- Algumas funções podem funcionar com qualquer tipo. Nesses casos, não defina o
-- cabeçalho dessas funções.
-- Use definições locais caso seja necessário criar funções auxiliares e calcular valores
-- repetidos ou que envolvam mais de uma operação.
-- 1. Crie uma função que inverte uma lista usando recursão em cauda.
inverte2 :: [a] -> [a]
inverte2 xs = aux xs []
  where 
    aux :: [a] -> [a] -> [a]
    aux [] ixs = ixs
    aux (h:t) ixs = aux t (h:ixs)

-- 2. Crie uma função que recebe uma lista de notas (Float) de alunos, calcula a média e retorna
-- uma String como resultado, sendo que: se a média < 4.0, o resultado é “REPROVADO”; se a
-- 4.0 <= média < 6.0, o resultado é “RECUPERACAO”; e se média >= 6.0, o resultado é
-- “APROVADO”.
status :: [Float] -> String
status (h:t) 
  | media < 4.0 = "REPROVADO"
  | media >= 4 && media < 6 = "RECUPERACAO"
  | otherwise = "APROVADO"
  where
    soma :: [Float] -> Float
    soma [] = 0
    soma (h:t) = h + soma t
    media = soma (h:t) / 3

-- 3. Crie uma função que recebe um inteiro n e retorna uma lista com os n primeiros elementos da
-- série de Fibonacci.
 
fibonacciLista :: Int -> [Int]
fibonacciLista n = fiboAux n 0 1
  where
    fiboAux :: Int -> Int -> Int -> [Int]
    fiboAux 1 _ y = [y]
    fiboAux n x y = y : fiboAux (n-1) y (x+y) 

-- 4. Crie a função equacao2grau a b c que retorna as raízes reais da equação do segundo grau
-- (ax² + bx + c = 0) em uma lista (a não pode ser zero). Use definição local para calcular o delta.
equacao2grau :: Float -> Float -> Float -> [Float]
equacao2grau a b c 
  | a > 0 && delta >= 0 = [bhaskara1, bhaskara2]
  | otherwise = error "Nao possui raizes reais"
  where
    delta = b*b - 4*a*c
    bhaskara1 = ((-b) + sqrt(delta)) / (2*a)
    bhaskara2 = ((-b) - sqrt(delta)) / (2*a)

-- 5. Crie uma função que recebe um inteiro n e uma lista e retorna uma lista de listas que
-- corresponde à lista original dividida em n partes.



