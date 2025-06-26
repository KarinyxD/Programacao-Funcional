-- Crie as tuplas Tabuleiro (Char,Int) e Jogada (Jogador,Tabuleiro), sendo Jogador um sinônimo para String. 
-- Crie uma função que recebe uma lista de jogadas e um jogador e retorne a quantidade de jogadas do jogador informado

type Tabuleiro = (Char, Int)
type Jogador = String
type Jogada = (Jogador, Tabuleiro)

qtdjogadas :: [Jogada] -> Jogador -> Int
qtdjogadas [] _ = 0
qtdjogadas (h:t) jogador = 
  if fst h == jogador then 1 + qtdjogadas t jogador
  else qtdjogadas t jogador