-- Faça uma função que recebe um caractere e retorna True se for uma letra ou False, caso não seja.

--usando if
letraif :: Char -> Bool
letraif c = if (c >= 'a' && c <= 'z' || c >= 'A' && c <= 'Z') then True
  else False

--usando guarda
letraguarda :: Char -> Bool
letraguarda c 
  | c >= 'a' && c <= 'z' = True
  | c >= 'A' && c <= 'z' = True
  | otherwise = False
