{-# LANGUAGE BlockArguments #-}
import System.IO
import Control.Monad (forever)
-- 1. Crie uma função que solicita do usuário o caminho de um arquivo e retorna o tamanho dele em
-- caracteres.
tamArquivo :: IO ()
tamArquivo = do
  putStrLn "Digite o caminho do arquivo:"
  caminho <- getLine 
  arq <- openFile caminho ReadMode
  all <- hGetContents arq
  putStrLn (show (length all))
  hClose arq

-- 2. Crie uma função que solicita do usuário o caminho de um arquivo e retorna o tamanho dele em
-- linhas.
tamArquivoLinha :: IO ()
tamArquivoLinha = do
  putStrLn "Digite o caminho do arquivo:"
  caminho <- getLine
  arq <- openFile caminho ReadMode
  all <- hGetContents arq
  putStrLn (show (length(lines all)))
  hClose arq

-- 3. Crie uma função que solicita do usuário o caminho de um arquivo e permite que ele escreva mais
-- linhas ao final do arquivo. Para finalizar, o usuário deve digitar “EOF”.
escreveArq :: IO ()
escreveArq = do
  putStrLn "Digite o caminho do arquivo:"
  caminho <- getLine
  arq <- openFile caminho AppendMode
  putStrLn "Digite a frase que deseja inserir no arquivo: (Digite EOF para finalizar)"
  let loop = do
        conteudo <- getLine
        if conteudo == "EOF" then 
          hClose arq
        else do
          hPutStrLn arq conteudo
          loop
  loop

-- 4. Crie uma função que solicita que o usuário digite “sum” para realizar uma soma ou “sub” para
-- realizar uma subtração. 
-- Em seguida, ele solicita que o usuário digite dois operandos e realiza a operação selecionada, 
-- imprimindo o resultado na tela no formato “a op b = s”, onde op pode ser ‘+’
-- ou ‘-’, a e b são os operandos e r é o resultado. 
-- O usuário pode repetir quantas vezes quiser até digitar “fim” no lugar da operação. 
-- O programa deve escrever em um arquivo todas as operações realizadas no formato “a op b = s”, cada uma em uma linha.

sumsub :: IO ()
sumsub = do 
  putStrLn "Digite o caminho do arquivo:"
  caminho <- getLine
  arq <- openFile caminho AppendMode
  let loop = do
        putStrLn "Digite 'sum' (realiza soma), 'sub' (realiza subtracao) ou 'fim' para encerrar:"
        opcao <- getLine
        if opcao == "fim" then hClose arq
        else do
          putStrLn "Agora digite os dois operandos:"
          a <- readLn
          b <- readLn
          if opcao == "sum" then do 
            let v = show a ++ " " ++ "+" ++ " " ++ show b ++ " = " ++ show (a+b)
            putStrLn v
            hPutStrLn arq v
            loop
          else 
            if opcao == "sub" then do
              let v = show a ++ " " ++ "-" ++ " " ++ show b ++ " = " ++ show (a-b)
              putStrLn v
              hPutStrLn arq v
              loop
            else do 
              putStrLn "Operador Invalido" 
              loop
  loop

