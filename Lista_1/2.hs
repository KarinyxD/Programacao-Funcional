--Faça uma função que calcule o volume de uma esfera.
--Fórmula: volume_esfera = 4 * PI * raio^3 / 3

main = do {
  putStrLn "Qual o raio da esfera?";
  raio <- readLn;
  print (volume_esfera raio) -- essa variavel raio ñ precisa ter o mesmo nome que a var. da definicao da funcao
}
volume_esfera :: Float -> Float
volume_esfera raio = (4 * pi * (raio^3) / 3)