-- Transforme a função da questão 1 em um operador.

main = do 
  putStrLn "Digite o primeiro valor (True ou False): "
  a <- readLn
  putStrLn "Digite o segundo valor (True ou False): "
  b <- readLn
  putStrLn ("O resultado de nAnd é: " ++ show(a $$ b))

infix 3 $$
($$) :: Bool -> Bool -> Bool
($$) True True = False 
($$) _ _ = True
