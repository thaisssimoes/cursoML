#C�lculo de probabilidade com distirbui��o binomial
#dbinom()
#x = n�mero de sucessos aguardados
#size = numero de eventos
#probabilidade


#Se voc� jogar uma moeda para o alto 5 vezes, voc� espera que d� coroa 3 vezes.
#Mas quais as chances de isso acontecer, uma vez que existe CARA e COROA? 50% = 0.5
dbinom(3,5,0.5)

#Sinal de 4 tempos
#Nenhum sinal aberto -> 4 sinais
dbinom(0,4,0.25)

#Dois sinais abertos
dbinom(2,4,0.25)

#Tr�s sinais abertos
dbinom(3,4,0.25)

#Quatro sinais abertos
dbinom(4,4,0.25)

#Probabilidade acumulativa 
#Calcula todas as probabilidades ate onde voce quer
pbinom(4,4,0.25)























