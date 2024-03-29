#�rvore de decis�o rpart
#install.packages('rpart', dependencies = T)
library (rpart)

credit 

amostra <- sample(2, 1000, replace = T, prob=c(0.7, 0.3))
amostra

#Treino e teste

creditotreino <- credit[amostra ==1, ]
creditoteste <- credit[amostra==2, ]

dim(creditotreino)
dim(creditoteste)

#Cria��o do modelo de �rvore de decis�o
#classica��o -> method = class
#regress�o -> method = anova

#arvore de decis�o
arvore <- rpart(class ~ .,data=creditotreino, method='class')

print(arvore)
plot (arvore)

#melhorar a exibi��o da �rvore
text(arvore, use.n=T, all=T, cex=0.8)

#validando os dados do teste
previsoes <- predict(arvore, newdata = creditoteste)
previsoes



cred <- cbind(creditoteste, previsoes)
View (cred)

cred["Result"] = ifelse(cred$good >0.75, "good", "bad")

#matriz de confus�o

confusao <-  table (cred$class, cred$Result)
confusao


#taxa de acerto
taxac= (confusao[1] + confusao[4])/ sum(confusao)
taxac*100
