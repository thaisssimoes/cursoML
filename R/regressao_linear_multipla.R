#Regressao linear multipla
#conjunto de dados do R

dim(mtcars)
head(mtcars)

#Linear simples
modelo <-  lm(mpg ~ disp, data=mtcars)
modelo

#coeficiente de determinaçao
summary(modelo)
summary(modelo)$r.squared


#Previsao
predict(modelo, data.frame(disp=200))
#resultado de milhas por galao

#Correlaçao
cor(mtcars[1:4])

#modelo de regressao linear multipla
modelo <- lm(mpg~ disp+hp+cyl, data=mtcars)
modelo

summary(modelo)$r.squared
summary(modelo)$adj.r.squared

predict(modelo, data.frame(disp <- 200, hp <- 100, cyl <- 4))

