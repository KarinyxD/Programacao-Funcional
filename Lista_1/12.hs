-- Faça uma função que solicita um inteiro e verifica se ele é primo ou não.

primo :: Int -> Bool
primo 1 = False
primo 2 = True
primo n = primoaux n (n-1)

primoaux :: Int -> Int -> Bool
primoaux _ 1 = True
primoaux n d = if mod n d == 0 then False else primoaux n (d-1)