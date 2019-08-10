#Aprendizado baseado em instância
#Nesse tipo de aprendizado não é criado um modelo

#O conjunto de dados -> KNN
#install.packages("class", dependencies = T)
library("class")

head(iris)
tails(iris)
dim(iris)
levels(iris$Species)

#treino e teste
amostra <-sample(2, 150, replace = T, prob = c(0.7,0.3))
amostra

#separar treino e teste
iristreino = iris[amostra ==1, ]
iristeste = iris[amostra==2, ]

dim(iristreino)
dim(iristeste)

#Treinar
#conjunto de dados de treino, conjunto de teste, conjunto de dados da classes de treino, k

previsoes <- knn(iristreino[, 1:4], iristeste[, 1:4], 
                 iristreino[, 5], k=7)

confusao <- table(iristeste[, 5], previsoes)
confusao

#taxa de acerto
sum(diag(confusao))/sum(confusao) * 100
