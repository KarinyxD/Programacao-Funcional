-- Crie uma função que recebe uma lista do tipo Ponto e retorna um ponto, cuja coordenada x é a
-- soma de todas as coordenadas x dos pontos da lista e o mesmo acontece com a coordenada y.

type Ponto = (Float, Float)

somaPontos :: [Ponto] -> Ponto
somaPontos [] = (0, 0)
somaPontos ((x, y):t) = (x + fst(somaPontos t), y + snd(somaPontos t))