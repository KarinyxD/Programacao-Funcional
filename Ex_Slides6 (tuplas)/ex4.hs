-- Crie uma função que retorna uma o primeiro e o último elemento de uma lista.

primeiroeultimo :: [a] -> (a, a)
primeiroeultimo [] = error "Lista vazia"
primeiroeultimo xs = (head xs, last xs)