-- Crie um operador === compara um inteiro de um algarismo com um dígito. Ex.: 1 === '1' retorna True.

infix 3 ===
(===) :: Int -> Char -> Bool
(===) a b = a == read [b]
