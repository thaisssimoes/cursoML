#distribui��o em um intervalo de tempo
#distribui��o de poisson


#M�dia - 2 acidentes por ano
#Chances de acidentes

#3 acidentes => lambda = m�dia de acidentes
dpois(3,lambda=2)

#Chances acumulativas
#x<=3
ppois(3, lambda=2)

#x>3
ppois(3, lambda=2, lower.tail = F)
