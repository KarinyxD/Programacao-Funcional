-- Implemente a função fibonacci que recebe uma posição (inteiro) e retorna o valor(inteiro) na posição indicada da série.

main = do
  putStrLn "Qual posição da sequência de Fibonacci você deseja obter?"
  n <- readLn 
  putStrLn $ "O valor "++show n++" da sequência de Fibonacci é: "++show (fibonacci n) 
  -- $ para substiruir os () 

fibonacci :: Int -> Int
fibonacci 0 = 0
fibonacci 1 = 1
fibonacci n = (fibonacci (n-1)) + (fibonacci (n-2))