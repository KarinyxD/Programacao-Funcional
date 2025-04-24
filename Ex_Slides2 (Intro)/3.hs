-- Implemente uma função que calcula a soma de inteiros não negativos usando as funções 
-- sucessor (succ) e predecessor (pred).

main = do 
  putStr "Digite os numeros NATURAIS-(não negativos) que deseja somar: "
  input <- getLine --le entrada toda do usuário
  -- map read converte os elementos da lista de strings para inteiro
  let [a, b] = map read (words input) :: [Int] -- divide a string em uma lista de palavras(separadas por espaço)
  putStrLn $ "A soma é: " ++ show (soma a b) 


soma :: Int -> Int -> Int
soma 0 b = b 
soma a b = soma (pred a) (succ b)


