#Classificação na pratica com bayes
install.packages("e1071", dependencies = T)
library(e1071)

credit <-  read.csv(choose.files(), sep =',', header = T)
View(credit)

dim(credit)

#Classficação do registro entre bad/good
levels(credit$class)

#Dividir os dados históricos em dois grupos
#Grupo de treino -> modelo
#Grupo de tete -> validar o modelo
#70%/30%

amostra <- sample(2, 1000, replace = T, prob=c(0.7, 0.3))
amostra

#Treino e teste
creditotreino = credit[amostra==1, ]
creditoteste = credit[amostra==2, ]

dim(creditoteste)
dim(creditotreino)

#Criação do modelo de treinamento
#Naive Bayes -> Tabela probabilistica
modelo <- naiveBayes(class ~., creditotreino)
modelo

#Validação -> predict, no conjunto de dados de teste
previsoes <- predict(modelo, creditoteste)
previsoes


#Métrica de desempenho
previsoes[1]
creditoteste$class[1]

#Tabela de confusão
confusao <- table(creditoteste$class, previsoes)
confusao

#verificar a diagonal principal para saber a quantidade de acerto

#taxa de acerto

taxac <- (confusao[1]+confusao[4])/sum(confusao)
taxac


#Teste de uma instancia
nova_amostra <- read.csv(file.choose(), sep=',', header = T)
View(nova_amostra)
dim(nova_amostra)

#Predict 
nova_amostra$class = predict(modelo, nova_amostra)
nova_amostra$class






















