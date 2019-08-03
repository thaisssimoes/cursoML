#Cálculo de probabilidade com distirbuição binomial
#dbinom()
#x = número de sucessos aguardados
#size = numero de eventos
#probabilidade


#Se você jogar uma moeda para o alto 5 vezes, você espera que dê coroa 3 vezes.
#Mas quais as chances de isso acontecer, uma vez que existe CARA e COROA? 50% = 0.5
dbinom(3,5,0.5)

#Sinal de 4 tempos
#Nenhum sinal aberto -> 4 sinais
dbinom(0,4,0.25)

#Dois sinais abertos
dbinom(2,4,0.25)

#Três sinais abertos
dbinom(3,4,0.25)

#Quatro sinais abertos
dbinom(4,4,0.25)

#Probabilidade acumulativa 
#Calcula todas as probabilidades ate onde voce quer
pbinom(4,4,0.25)























