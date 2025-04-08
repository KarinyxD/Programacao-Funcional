-- Faça uma função que solicite 3 inteiros e os imprime em ordem crescente. Use show
-- para converter de inteiro para String.

main = do
  putStrLn "Digite um inteiro: "
  a <- readLn
  putStrLn "Digite um inteiro: "
  b <- readLn
  putStrLn "Digite um inteiro: "
  c <- readLn

ordena :: Int -> Int -> Int -> [Int]
