-- Escrever uma função que lê um valor N inteiro e positivo e calcula o valor de E.
-- Fórmula: E = 1 + 1 / 1! + 1 / 2! + 1 / 3! + ... + 1 / N!

fatorial :: Int -> Int
fatorial 0 = 1
fatorial 1 = 1
fatorial x = x * fatorial(x-1)

valorE :: Int -> Double
valorE 0 = 1
valorE n = (valorE (n-1)) + 1 / fromIntegral (fatorial n)


