-- 2. Crie o módulo Formas, que importa o módulo Pontos e define o tipo Forma, que pode ser um
-- Círculo com um ponto e um raio, ou um Retângulo com dois pontos. Crie também a função
-- contido que verifica se um ponto está contido em uma forma.
module Formas where
import Pontos

type Circulo = (Ponto, Float)
type Retângulo = (Ponto, Ponto)
data Forma = CirculoF Circulo | RetanguloF Retangulo

contido :: Forma -> Ponto -> Bool
