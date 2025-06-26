-- Crie a tupla Trapézio, com teto, piso e altura. Crie uma função que calcula a sua área com a fórmula (teto + piso) * altura / 2.

type Trapezio = (Teto, Piso, Altura)
type Teto = Float
type Piso = Float
type Altura = Float

calculaTrapezio :: Trapezio -> Float
calculaTrapezio (teto, piso, altura) = (teto + piso) * altura / 2
