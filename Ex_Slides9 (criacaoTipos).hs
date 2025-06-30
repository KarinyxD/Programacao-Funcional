import Data.Char (GeneralCategory(Format))
-- 1. Como você colocaria os tipos Int e Pares a como instâncias da classe Visible?
class Visible t where
  toString :: t -> String
  size :: t -> Int

instance Visible Int where
  toString x = show x
  size x = length (toString x)

data Pares a = Par a a
-- Visible a => significa: só funciona se a também for Visible (a só pode ser dos tipos que Visible suporta)
-- Assim como o Eq a => a, a só vai ser dos tipos que Eq suporta
instance Visible a => Visible (Pares a) where
  toString (Par x y) = "(" ++ toString x ++ "," ++ toString y ++ ")"
  size (Par x y) = size x + size y + 3

-- 2. Crie um tipo algébrico Ponto com as coordenadas X e Y. Modifique o tipo Forma levando
-- em consideração o tipo Ponto. Modifique também a função surface.
data Ponto = Ponto {x :: Float, y :: Float}
-- data Ponto = Ponto Float Float

data Forma = Circulo Ponto Float | Retangulo Ponto Ponto

surface :: Forma -> Float
surface (Circulo _ r) = pi * r ^ 2
surface (Retangulo (Ponto x1 y1) (Ponto x2 y2)) = (abs $ x2 - x1) * (abs $ y2 - y1)

-- 3. Crie uma função que recebe dois pontos e retorna um retângulo.
retang :: Ponto -> Ponto -> Forma
retang (Ponto x1 y1) (Ponto x2 y2) = (Retangulo (Ponto x1 y1) (Ponto x2 y2))
-- retang p1 p2 = Retangulo p1 p2

-- 4. Crie uma função que recebe um ponto e uma forma e retorna Verdadeiro se o ponto se
-- encontra dentro da forma ou Falso caso não se encontre. Use o tipo Booleano como
-- retorno.
pontoDentro :: Ponto -> Forma -> Bool
pontoDentro (Ponto x y) (Retangulo (Ponto x1 y1) (Ponto x2 y2)) = 
  if ((x1 <= x && x <= x2) && (y1 <= y && y <= y2)) then True else False
pontoDentro (Ponto x y) (Circulo (Ponto x1 y1) r) 
  | d <= r = True
  | d > r = False
  where d = sqrt(((x - x1) ^ 2 + (y - y1) ^ 2))

-- 5. Crie uma função desloca que recebe uma Forma e dois valores Float que correspondem
-- ao deslocamento nos eixos X e Y e retorna a Forma com os eixos dos seus pontos
-- reajustados.

desloca :: Forma -> Float -> Float -> Forma
desloca (Retangulo (Ponto x1 y1) (Ponto x2 y2)) x y =
  Retangulo (Ponto (x1 + x) (y1 + y)) (Ponto (x2 + x) (y2 + y))
desloca (Circulo (Ponto x1 y1) r) x y = (Circulo (Ponto (x1 + x) (y1 +y)) r)
