-- Fornecidos três valores, a, b e c, elaborar uma função que retorne quantos desses três números 
-- são maiores que o valor médio entre eles.

main = do
    putStrLn "Digite o primeiro número: "
    a <- readLn
    putStrLn "Digite o segundo número: "
    b <- readLn
    putStrLn "Digite o terceiro número: "
    c <- readLn
    let valor_medio = media a b c
        qtd_num = length [x | x <- [a, b, c], x > valor_medio]
    -- coloca a, b e c em uma lista x e verifica se cada elemento da lista é maior que o valor_medio
    -- os elementos que sao maiores, são armazenados em uma nova lista x
    -- e length conta quantos elementos tem essa nova lista
    print("Lista x:" ++ show x)
    putStrLn ("Quantidade de números maiores que a média: " ++ show qtd_num)

-- Definição da função media
media :: Float -> Float -> Float -> Float
media a b c = (a + b + c) / 3