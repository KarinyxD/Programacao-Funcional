-- Use uma combinação de fst e snd para extrair o 4 da tupla (("Hello", (4, True)), 15.5)

extrair :: ((String, (Int, Bool)), Float) -> Int
extrair x = fst(snd(fst x))