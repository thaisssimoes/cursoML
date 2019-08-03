#Regressao logistica
#usa o csv de candidatos

eleicao <- read.csv(file.choose(), sep=';', header=T)

View(eleicao)
summary(eleicao)

cor(eleicao$DESPESAS, eleicao$SITUACAO)

plot(eleicao$DESPESAS, eleicao$SITUACAO)

modelo <- glm(SITUACAO ~ DESPESAS, data = eleicao, family = "binomial")
modelo

plot(eleicao)
plot(eleicao$DESPESAS, eleicao$SITUACAO, col = "red", pch=20)
points(eleicao$DESPESAS, modelo$fitted.values,pch=4)


#Treinamento dos dados 
peleicao <- read.csv(file.choose(), sep=';', header=T)

peleicao$RESULTADO <- predict(modelo, newdata =peleicao, type="response")

#Traz a probabilidade de ser eleito ou não
View(peleicao)

peleicao$SITUACAO <- (peleicao$RESULTADO * 100 > 85)
peleicao$SITUACAO = ifelse(peleicao$SITUACAO == T, 1, 0)















