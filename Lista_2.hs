--Obs: Algumas funções podem funcionar para listas de qualquer tipo. Nessas casos, não
--defina o cabeçalho dessas funções.
--1. Implemente uma função que recebe uma lista do tipo Double e retorne a média nos
--elementos dessa lista.
mediaDouble :: [Double] -> Double
mediaDouble [] = 0
mediaDouble (h:t) = sum (h:t) / fromIntegral (length (h:t))

--2. Implemente uma função que inverte os elementos de uma lista (não use a função reverse).
reverse2 :: [a] -> [a]
reverse2 [] = []
reverse2 (h:t) = reverse2 t ++ [h] -- : inicio da lista ++ no final da lista

--3. Implemente uma função que informe o n-ésimo membro de uma lista (não use o operador !!).
listaN :: Int -> [a] -> a
listaN _ [] = error "Lista vazia"
listaN 0 (h:_) = h
listaN x (_:t) = listaN (x-1) t

--4. Implemente uma função que recebe uma String e a retorna com todas as letras em maiúscula.
-- Para transformar uma letra minúscula em maiúscula pelo código ASCII, some  -32 ao valor do caractere.
-- Exemplo: 'a' tem código 97, 'A' tem código 65, então 'a' -> 'A' é 97 - 32 = 65.
-- Para uma string, aplique isso para cada caractere minúsculo ('a'..'z').
maiuscula :: String -> String
maiuscula [] = []
maiuscula (h:t) 
  | h >= 'a' && h <= 'z' = toEnum (fromEnum h - 32) : maiuscula t
  | otherwise = h : maiuscula t

--5. Implemente uma função que recebe uma frase (String) e a retorna as letras iniciais de cada
--palavra em maiúscula.
-- esta primeira soluçao nao engloba a primeira letra da string, somente as letras que vêm após um espaço ' '.
inicialMaiuscula :: String -> String
inicialMaiuscula [] = []
inicialMaiuscula [x] = [x] -- quando a string termina (só tem um elemento, o ultimo)
inicialMaiuscula (h:a:t)
  | h == ' ' && a >= 'a' && a <= 'z' = h : toEnum (fromEnum a - 32) : inicialMaiuscula t
  | otherwise = h : inicialMaiuscula (a:t)

-- esta segunda soluçao é mais otimizada e engloba todos os casos
inicialMaiuscula2 :: String -> String
inicialMaiuscula2 [] = []
inicialMaiuscula2 xs = unwords (inicialMaiusculaAux2 (words xs))

inicialMaiusculaAux2 :: [String] -> [String]
inicialMaiusculaAux2 [] = []
inicialMaiusculaAux2 (h:t)
  | head h >= 'a' && head h <= 'z' = (toEnum (fromEnum (head h) - 32) : tail h) : inicialMaiusculaAux2 t
  | otherwise = h : inicialMaiusculaAux2 t

--6. Implemente uma função que recebe uma String e retorna outra somente com as letras.
somenteLetra :: String -> String
somenteLetra [] = []
somenteLetra (h:t)
  | h >= '0' && h <= '9' = somenteLetra t
  | otherwise = h : somenteLetra t

--7. Implemente uma função que recebe uma lista e um inteiro t e retorna uma lista de listas que
--corresponde a lista original dividida em listas de tamanho t.
listadelistas :: Int -> [a] -> [[a]]
listadelistas _ [] = []
listadelistas 0 _ = []
listadelistas n xs 
  | n <= length xs = take n xs : listadelistas n (drop n xs)
  | otherwise = [xs]

--8. Implemente uma função que verifica se uma lista é ou não um palíndromo. Um palíndromo é
--uma lista que se invertida se mantém exatamente igual à original.
palindromo :: String -> Bool
palindromo xs =
  if (reverse2 xs == xs) then True
  else False

--9. Implemente uma função que recebe um inteiro e retorna uma lista de todos os números
-- primos iguais ou inferiores a esse inteiro.
listaPrimos :: Int -> [Int]
listaPrimos 0 = []
listaPrimos x = 
  if primo x == True then x : listaPrimos (x-1)
  else listaPrimos (x-1)

primo :: Int -> Bool
primo 1 = False
primo 2 = True
primo n = primoAux n (n-1)

primoAux :: Int -> Int -> Bool
primoAux _ 1 = True
primoAux n d = if n `mod` d == 0 then False
  else primoAux n (d-1)

--10. Implemente uma função que recebe uma lista de listas e retorna uma lista normal com todos
--os elementos das listas internas (não use a função concat).
listanormal :: [[a]] -> [a]
listanormal [] = []
listanormal (h:t) = h ++ listanormal t

--11. Implemente uma função que recebe uma lista de listas do tipo Double e retorna um lista com
--a média dos elementos de cada lista interna.
medialistas :: [[Double]] -> [Double]
medialistas [] = []
medialistas (h:t) = medialistaAux h : medialistas t

medialistaAux :: [Double] -> Double
medialistaAux xs = sum xs / fromIntegral (length xs)