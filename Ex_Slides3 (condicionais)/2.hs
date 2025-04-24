-- Faça uma função que recebe 3 números e retorna o maior.

main = do 
  putStrLn "Digite o primeiro número: "
  a <- readLn
  putStrLn "Digite o segundo número: "
  b <- readLn
  putStrLn "Digite o terceiro número: "
  c <- readLn
  let maior_num = maior a b c
  putStrLn ("O maior número é: " ++ show maior_num)

maior :: Int -> Int -> Int -> Int
maior a b c = if a > b && a > c then a 
            else if b > a && b > c then b
            else c