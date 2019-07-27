#Amostragem sistemática
#Instalar o pacote TeachingSampling

install.packages('TeachingSampling', dependencies = T)

library('TeachingSampling')

#Intervalor de 10 em 10

amostra = S.SY(150,10)
amostra

amostrairis = iris[amostra, ]
amostrairis
