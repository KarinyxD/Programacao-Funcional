-- Obs: algumas funções podem funcionar com qualquer tipo. Nesses casos, não defina o
-- cabeçalho dessas funções. Use definições locais caso seja necessário criar funções
-- auxiliares e calcular valores repetidos ou que envolvam mais de uma operação.
-- 1. Crie uma função que recebe uma lista e retorna o menor e o maior valor dessa lista.
menormaior :: [Int] -> (Int, Int)
menormaior [] = (0, 0)
menormaior xs = (minimum xs, maximum xs)

-- 2. Crie uma função que verifica se um inteiro é primo. Essa função retorna uma tupla (Bool, Int),
-- na qual o Bool indica se o inteiro é primo ou não e o Int indica qual número conseguiu dividir o
-- inteiro, caso ele não seja primo.
primo :: Int -> (Bool, Int)
primo 1 = (False, 0)
primo 2 = (True, 0) 
primo x = primoAux x (x-1)

primoAux :: Int -> Int -> (Bool, Int)
primoAux _ 1 = (True, 0)
primoAux x d = 
  if x `mod` d == 0 then (False, d)
  else primoAux x (d-1)

-- 3. Crie uma função que recebe dois inteiros e retorna um tupla com o MDC e o MMC.
tupla :: Int -> Int -> (Int, Int)
tupla x y = (mmc x y, mdc x y)

mmc :: Int -> Int -> Int 
mmc a b = div (a*b) (mdc a b)

mdc :: Int -> Int -> Int
mdc a b
  | a == b = a
  | a > b  = mdc (a-b) b
  | a < b  = mdc b a

-- 4. Crie uma função que recebe um ano e um mês e retorna o número de dias do mês,
-- considerando anos bisextos e não bissextos.
diasmes :: (Int, Int) -> Int
diasmes (ano, mes) = if bissextoguarda ano == True && mes == 2 then 29
  else case mes of
    1 -> 31
    2 -> 28
    3 -> 31
    4 -> 30
    5 -> 31
    6 -> 30
    7 -> 31
    8 -> 31
    9 -> 30
    10 -> 31 
    11 -> 30
    12 -> 31
    _ -> 0

bissextoguarda :: Int -> Bool
bissextoguarda ano 
  | (ano `mod` 400 == 0) = True
  | (ano `mod` 4 == 0 && ano `mod` 100 /= 0) = True
  | otherwise = False

-- 5. Crie o tipo Data (Int,Int,Int). Crie uma função que recebe duas datas e verificam se elas são iguais. 
type Data = (Int, Int, Int)
dataigual :: Data -> Data -> Bool
dataigual (d, m, a) (dia, mes, ano) = if d == dia && m == mes && a == ano then True
  else False

qtdias :: Data -> Data -> Int


-- 6. Crie o tipo Compromisso com Descrição (String) e Data. Crie um tipo Agenda que é uma lista
-- de Compromissos. Crie uma função que recebe uma Agenda e uma Data e retorna uma lista
-- com as descrições de Compromisso naquela Data.


-- 7. Crie uma função que recebe uma Agenda e retorna a Data que possui mais Compromissos.


-- 8. Crie uma Função que recebe uma Agenda, uma Descrição de Compromisso e a Data atual e
-- retorna a Data e quantidade de dias que faltam para aquele compromisso. Se não houver
-- Compromisso com a Descrição passada, retorne a Data atual e 0 dias de diferença.