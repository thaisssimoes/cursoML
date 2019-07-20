#Arrays

#Array com 3 dimensões e 24 elementos
ar1 <- array(1:24, dim=c(3,4,2))
ar1

#cada espaço entre virgulas representa uma dimensão do seu conjunto de dados
ar1[, , ]

#Quero todas as linhas, apenas as colunas 2 e 3 e todas as dimensões
ar1[,2:3,]

#Somatório dos elementos da primeira dimensão
sum(ar1[,,1])

#Somatório da primeira linha da primeira dimensão
sum(ar1[1,,1])

#conjunto de dados TITANIC
data("Titanic")
Titanic

dim(Titanic)
dimnames(Titanic)

sum(Titanic)

#Classe -> dimensão
#Somatório dos passageiros da classe crew/tripulação

sum(Titanic[4, , , ])
sum(Titanic[4,2, , ])


#porcentagem da classe crew em relação ao total
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
apply(Titanic[,,,2], 3, sum)[1] #pegasó a primeira coluna

#age -> sobreviventes por sexo
apply(Titanic[,,,2], c(1:3), sum)[, "Female", "Child"]
apply(Titanic[,,,2], c(1:3), sum)[, , "Child"]
