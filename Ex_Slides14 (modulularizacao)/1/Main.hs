-- 1. Crie o módulo Calculadora com as funções polimórficas soma, subtração, multiplicação e divisão.
-- Crie o módulo Main e crie uma função que solicita os números do usuário e usa as funções do
-- módulo Calculadora.

module Main where
import Calculadora

main = do
  putStrLn "Digite o primeiro numero: "
  x <- readLn
  putStrLn "Digite o segundo numero: "
  y <- readLn
  putStrLn ("A soma é: " ++ show (soma x y))
  putStrLn ("A subtracao é: " ++ show (subtracao x y))
  putStrLn ("A multiplicacao é: " ++ show (multiplicacao x y))
  putStrLn ("A divisao é: " ++ show (divisao x y))