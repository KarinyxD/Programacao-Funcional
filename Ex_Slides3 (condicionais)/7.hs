-- Escreva um algoritmo que solicite a os três lados de um triângulo e verifique se é isóscele,
-- equilátero ou escaleno

main = do{
  putStrLn "Digite o primeiro lado do triângulo: ";
  a <- readLn;
  putStrLn "Digite o segundo lado do triângulo: ";
  b <- readLn;
  putStrLn "Digite o terceiro lado do triângulo: ";
  c <- readLn;
  triangulo a b c;
}
triangulo :: Float -> Float -> Float -> IO ()
triangulo a b c
  | a == b && b == c = putStrLn "Triângulo equilátero"
  | a == b || b == c || a == c = putStrLn "Triângulo isósceles"
  | otherwise = putStrLn "Triângulo escaleno"
  -- | True = putStrLn "Triângulo escaleno" (outra maneira, sem usar otherwise)