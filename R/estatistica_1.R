#Amostras
View(iris)

dim(iris)
head(iris, 10)
tail(iris, 10)

#150 = valor de resultados  esperados///Replace = T quer dizer que H� reposi��o de valores
amostra <- sample(c(0,1), 150, replace = T, prob=c(0.5,0.5))
amostra
length (amostra [amostra==1])
length (amostra [amostra==0])
#vetor num�rico
class(amostra)

#Fun��o set.seed() -> mant�m constante a semente da aleatoriedade
set.seed(2345)

sample(c(100),1)


