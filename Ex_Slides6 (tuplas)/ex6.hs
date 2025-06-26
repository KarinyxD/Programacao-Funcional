-- Crie uma função que recebe uma lista do tipo Triângulo (Float, Float, Float) e retorna uma lista do mesmo tipo contendo somente triângulos equilateros.

type Triangulo = (Float, Float, Float)

listequilatero :: [Triangulo] -> [Triangulo]
listequilatero [] = []
listequilatero ((a,b,c):t) = 
  if a == b && b == c then (a,b,c) : listequilatero t
  else listequilatero t