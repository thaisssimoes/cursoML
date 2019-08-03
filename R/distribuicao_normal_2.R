#Distribuicao normal
#Diagrama de normalidade usando a funçao rnorm()
#Criar um conjunto de dados com numero normalmente distribuidos.

help(rnorm)

x <- rnorm(100)
x

#Gerar grafico de normalidade
qqnorm(x)
qqline(x)

#Para saber se os dados estao normalmente distribuidos, ele tem que estar entre 0.05.
#Se o p-value > 0.05 quer dizer que a hipotese e nula.
shapiro.test(x)
