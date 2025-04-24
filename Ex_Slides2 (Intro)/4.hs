-- Transforme a função da questão 1 em um operador.


main = do 
  putStrLn "Digite o primeiro valor (True ou False): "
  a <- readLn
  putStrLn "Digite o segundo valor (True ou False): "
  b <- readLn
  putStrLn ("O resultado de nAnd é: " ++ show(a `nAnd` b))

-- precisa usar as crases para definir um novo operador.
infix 3 `nAnd`
nAnd :: Bool -> Bool -> Bool
nAnd True True = False 
nAnd _ _ = True
