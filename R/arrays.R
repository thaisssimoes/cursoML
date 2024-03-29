#Arrays

#Array com 3 dimens�es e 24 elementos
ar1 <- array(1:24, dim=c(3,4,2))
ar1

#cada espa�o entre virgulas representa uma dimens�o do seu conjunto de dados
ar1[, , ]

#Quero todas as linhas, apenas as colunas 2 e 3 e todas as dimens�es
ar1[,2:3,]

#Somat�rio dos elementos da primeira dimens�o
sum(ar1[,,1])

#Somat�rio da primeira linha da primeira dimens�o
sum(ar1[1,,1])

#conjunto de dados TITANIC
data("Titanic")
Titanic

dim(Titanic)
dimnames(Titanic)

sum(Titanic)

#Classe -> dimens�o
#Somat�rio dos passageiros da classe crew/tripula��o

sum(Titanic[4, , , ])
sum(Titanic[4,2, , ])


#porcentagem da classe crew em rela��o ao total
sum(Titanic[4,,,])/sum(Titanic)

#Quantos sobreviveram
sum(Titanic[ , , , 2])

#porcentagem de sobreviventes
sum(Titanic[,,,2])/sum(Titanic)

#2 -> somatorio pelo sexo

apply(Titanic, 2, sum)
margin.table(Titanic, margin=2)

#age -> sobreviventes
apply(Titanic[,,,2], 3, sum)
apply(Titanic[,,,2], 3, sum)[1] #pegas� a primeira coluna

#age -> sobreviventes por sexo
apply(Titanic[,,,2], c(1:3), sum)[, "Female", "Child"]
apply(Titanic[,,,2], c(1:3), sum)[, , "Child"]
