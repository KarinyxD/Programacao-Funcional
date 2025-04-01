-- O custo ao consumidor de um carro novo é a soma do custo de fábrica com a percentagem do distribuidor e 
-- dos impostos (aplicados ao custo de fábrica). Supondo que a percentagem do distribuidor seja de 28% e os 
-- impostos de 45%, escrever uma função que leia o custo de fábrica de um carro e escreva o custo ao consumidor.

import Text.Printf -- Importa o módulo para usar printf

main = do{
  putStr "Digite o custo de fábrica do carro: ";
  x <- readLn;
  -- putStrLn("O custo ao consumidor é de " ++  show (custo_consumidor x) ++ " reais") -- show converte para string
  printf "O custo ao consumidor é: %.2f reais.\n" (custo_consumidor x) -- colocar 2 casas decimais
}

distribuidor :: Float
distribuidor = 28 / 100;

impostos :: Float
impostos = 45 / 100;

custo_consumidor :: Float -> Float
custo_consumidor custo_fabrica = custo_fabrica + (custo_fabrica * distribuidor) + (custo_fabrica * impostos)