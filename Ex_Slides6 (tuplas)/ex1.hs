-- Use uma combinação de fst e snd para extrair o 4 da tupla (("Hello", (4, True)), 15.5)

main = do 
  let tupla = (("Hello", (4, True)), 15.5)
  print (fst(snd (fst(tupla))))
