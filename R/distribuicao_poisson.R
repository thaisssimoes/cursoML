#distribuição em um intervalo de tempo
#distribuição de poisson


#Média - 2 acidentes por ano
#Chances de acidentes

#3 acidentes => lambda = média de acidentes
dpois(3,lambda=2)

#Chances acumulativas
#x<=3
ppois(3, lambda=2)

#x>3
ppois(3, lambda=2, lower.tail = F)
