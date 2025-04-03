-- Faça uma função que verifique se um ano é bissexto ou não. Um ano é bissexto se ele
-- for divisível por 400 ou é divisível por 4 mas não por 100.

main = do
  putStrLn "Digite um ano: "
  ano <- readLn
  if bissexto ano then
    putStrLn (show ano ++ " é um ano bissexto.")
  else
    putStrLn (show ano ++ " não é um ano bissexto.")

bissexto :: Int -> Bool
bissexto ano
  | ano `mod` 400 == 0 = True
  | ano `mod` 4 == 0 && ano `mod` 100 /= 0 = True
  | otherwise = False