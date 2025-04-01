--Escreva uma função que leia três números (Float ou Double) e calcule a média

main = do{
    putStr "Digite o primeiro número: "; --printa na tela sem quebra de linha (com quebra de linha usar putStrLn)
    a <- readLn; --armazena o que foi digitado na variavel 
    putStr "Digite o segundo número: ";
    b <- readLn;
    putStr "Digite o terceiro número: ";
    c <- readLn;
    print (media a b c);
}

--definição da funcao media
media :: Float -> Float -> Float -> Float
media a b c = (a + b + c) / 3
