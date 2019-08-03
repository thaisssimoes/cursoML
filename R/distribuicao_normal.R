#Distribuiçao normal
#Calculo de probabilidade

#Probabilidade de encontrar um objeto < 6kg
#Media de 8kg, dp = 2

#O que eu quero encontrar, a media e o desvio padrao
pnorm(6,8,2)

1- pnorm(6,8,2)

#Para inverter a busca da analise do grafico de uma distribuicao normal, usa-se lower.tail=F
pnorm(6,8,2, lower.tail=F)

#Probabilidade de encontrar um objeto que pese < 6kg e > 10 kg
pnorm(6,8,2) + pnorm(10,8,2, lower.tail=F)

