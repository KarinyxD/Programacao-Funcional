-- Crie a tupla Trapézio, com teto, piso e altura. Crie uma função que calcula a sua área com a fórmula (teto + piso) * altura / 2.

main = do
  
  putStr "Insira o teto do trapézio: "
  teto <- readLn
  putStr "Insira o piso do trapézio: "
  piso <- readLn
  putStr "Insira a altura do trapézio: "
  altura <- readLn
  -- trapezio, teto, piso e altura minusculos são variáveis
  let trapezio = (teto, piso, altura)
  let area = calculaArea trapezio -- tais variaveis são mandadas para a função calculaArea
  putStrLn ("A área do trapézio é: " ++ show area)

-- Dei outros nomes para o tipo Float
type Teto = Float
type Piso = Float
type Altura = Float
type Trapézio = (Teto, Piso, Altura) -- para definir a tupla Trapezio
calculaArea :: Trapézio -> Float --definição da função com os tipos que foram definidos (em maiusculo)
calculaArea (teto, piso, altura) = (teto + piso) * altura / 2 -- calculo a area com as variaveis que foram mandadas