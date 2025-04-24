-- Crie um operador === compara um inteiro de um algarismo com um dígito. Ex.: 1 === '1' retorna True.

main = do
  putStr "Digite um inteiro de 1 dígito: "
  num <- readLn
  putStr "Digite o char: "
  char <- getChar -- nao permite dar enter e o caractere de nova linha '\n' não é consumido e fica no buffer
  putStrLn ("\nO resultado é: "++show (num === char))


infix 4 ===
(===) :: Int -> Char -> Bool
num === char = num == read [char] 