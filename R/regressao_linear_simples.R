#Conjunto de dados de carros instalados no R
#prever a distancia ate frear

dim(cars)
summary(cars)
head(cars)

#correlaçao
cor(cars)

#Funcao para criar o modelo de regressao linear
modelo <-  lm (speed ~ dist, data=cars )
modelo

plot(modelo)
plot(speed ~ dist, data = cars)
abline(modelo)

#Prever a velocidade de parada do carro
#Formula da previsao -  Intersecçao + declive * valor_previsto

#intersecçao
modelo$coefficients[1]
#declive
modelo$coefficients[2]

#Parada 22ft
modelo$coefficients[1]+modelo$coefficients[2] * 22


#Funçao predict -> usado para efetuar um previsao
predict (modelo, data.frame(dist=22))
predict(modelo, data.drame(dist=50))
predict(modelo, data.frame(dist=c(22,50)))

