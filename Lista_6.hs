--Obs: A partir de agora, sempre defina o cabeçalho das funções. Use a notação polimórfica se necessário. Sempre use definições locais 
--casos seja necessário criar funções auxiliares que são usadas por uma única função e para calcular valores repetidos ou que envolvam
--mais de uma operação.

--1. Crie uma função polimórfica que recebe uma lista e retorna o menor e o maior valor dessa lista.
-- Uma função polimórfica é aquela que pode operar sobre diferentes tipos de dados.
-- No exemplo abaixo, 'findMinMax' funciona para qualquer tipo 'a' que seja instância de 'Ord' (ou seja, que possa ser ordenado).
-- Assim, pode ser usada com listas de Int, Float, Char, etc.

findMinMax :: (Ord a) => [a] -> (Maybe a, Maybe a)
-- Se a lista for vazia, não há menor nem maior, então retorna (Nothing, Nothing)
findMinMax [] = (Nothing, Nothing)
-- Caso contrário, retorna (Just menor, Just maior)
findMinMax xs = (Just (minimum xs), Just (maximum xs))

--2. Crie uma função polimórfica de alta ordem que recebe uma função unária que retorna Bool e uma lista e retorna uma tupla,
--cujo primeiro elemento é uma lista dos elementos que obtiveram True com a função recebida e o segundo elemento é uma lista dos 
--elementos que obtiveram False. Ex: fun odd [1,2,3,4] = ([1,3],[2,4]) (odd se é ímpar (true) ou par (false)).
fun :: (a -> Bool) -> [a] -> ([a], [a])
fun _ [] = ([], [])
fun f (x:xs) =
  --se a cabeça da lista for True, adiciona x na lista de trues, senão, adiciona x na lista de falses
    if f x then (x:trues, falses) else (trues, x:falses)
  where
  --definição local das listas trues e falses(retorno da funcao fun)
    (trues, falses) = fun f xs


--3. Crie o tipo Pacote que pode assumir os valores Vazio ou um conteúdo de um tipo qualquer. Crie uma função que desempacota o conteúdo 
--de um Pacote caso não esteja vazio (use o tipo Maybe). Indique que o tipo Pacote é uma instância de Show, cuja string obtida deve ser
-- do conteúdo dentro de um quadrado. Por exemplo, uma caixa com o valor 100 deve ser impressa como:
-------
-- | 100 |
-------
data Pacote a = Vazio | Conteudo a

desempacota :: Pacote a -> Maybe a
desempacota Vazio = Nothing
desempacota (Conteudo x) = Just x

-- Instância personalizada de Show para Pacote
instance Show a => Show (Pacote a) where
  show Vazio = "-------\n|     |\n-------"
  show (Conteudo x) =
    let conteudoStr = show x
        espacos = replicate (5 - length conteudoStr) ' '
    in "-------\n| " ++ conteudoStr ++ espacos ++ "|\n-------"



--4. Usando o conceito de tipos algébricos, crie o tipo Pessoa, que pode ser uma pessoa física com nome e cpf ou uma pessoa jurídica 
--com nome e cnpj. Indique que Pessoa é uma instância das classes Show e Eq.


-- 5. Crie a função isPF que retorna True se uma pessoa for física e False se for jurídica.

--6. Indique que pessoa é uma instância da classe Ord, ordenando as pessoas com base na ordem alfabética do nome. Dica: o tipo String já 
--é uma instância de Ord.


--7. Crie uma classe de tipos chamada Unico com as funções: igual, que indica se dois valores são iguais caso o componente identificador 
--deles for igual; e checkID que recebe uma lista de valores e retorna essa lista com apenas a primeira ocorrência de um valor com determinado
--identificador.


--8. Indique que Pessoa é uma instância da classe Unico.