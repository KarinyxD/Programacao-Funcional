-- O que está errado com a definição da função todosDiferentes abaixo? todosDiferentes n m p = (n /= m) && (m /= p)

--Resposta:
-- O diferente nao é transitivo que nem o '==', se n é diferente de m e(&&) m é diferente de p, 
-- isso nao implica que n é diferente de p