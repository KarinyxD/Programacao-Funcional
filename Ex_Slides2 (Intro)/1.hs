-- Implemente a função nAnd :: Bool -> Bool -> Bool que dá o resultado True, exceto quando seus dois argumentos são True .

main = do 
  putStrLn "Digite o primeiro valor (True ou False): "
  a <- readLn
  putStrLn "Digite o segundo valor (True ou False): "
  b <- readLn
  let resultado = nAnd a b
  putStrLn ("O resultado de nAnd é: " ++ show resultado)

nAnd :: Bool -> Bool -> Bool
nAnd True True = False 
nAnd _ _ = True