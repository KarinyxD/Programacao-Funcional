-- Faça uma função que solicite um tempo em segundos e converta para horas, minutos e segundos, imprimindo no formato h:m:s.

convertetempo :: Int -> String
convertetempo segundos = 
  show (segundos `div` 3600) ++ ":" ++
  show (segundos `mod` 3600 `div` 60) ++ ":" ++
  show ((segundos `mod` 3600) `mod` 60)