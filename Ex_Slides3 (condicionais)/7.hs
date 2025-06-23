-- Escreva um algoritmo que solicite a os três lados de um triângulo e verifique se é isóscele,
-- equilátero ou escaleno

main = do
  putStrLn "Digite o primeiro lado do triângulo: "
  a <- readLn
  putStrLn "Digite o segundo lado do triângulo: "
  b <- readLn
  putStrLn "Digite o terceiro lado do triângulo: "
  c <- readLn
  putStrLn (trianguloguarda a b c)

--Usando if
trianguloif :: Float -> Float -> Float -> String
trianguloif a b c = if (a == b && a == c) then "Triangulo equilatero"
  else if(a == b || b == c || a == c) then "Triangulo isosceles"
  else "Triangulo escaleno"


--Usando guardas
trianguloguarda :: Float -> Float -> Float -> String
trianguloguarda a b c
  | a == b && b == c = "Triangulo equilatero"
  | a == b || b == c || a == c = "Triangulo isosceles"
  | otherwise = "Triangulo escaleno"
  -- | True = putStrLn "Triângulo escaleno" (outra maneira, sem usar otherwise)