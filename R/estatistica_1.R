#Amostras
View(iris)

dim(iris)
head(iris, 10)
tail(iris, 10)

#150 = valor de resultados  esperados///Replace = T quer dizer que HÁ reposição de valores
amostra <- sample(c(0,1), 150, replace = T, prob=c(0.5,0.5))
amostra
length (amostra [amostra==1])
length (amostra [amostra==0])
#vetor numérico
class(amostra)

#Função set.seed() -> mantém constante a semente da aleatoriedade
set.seed(2345)

sample(c(100),1)


