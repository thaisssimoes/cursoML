#Geração de amostra estratificada
#Conjunto de dados do iris analisar o atributo espécies
#Gerar amostras de tamanho fixo escolhidas aleatoriamente

#Summary -> tabela estatística básica
summary(iris)

#Pacote para amostras estratificadas
install.packages("sampling")

library(sampling)

amostrairis <- strata(iris, c("Species"),
                      size = c(25,25,25), method = 'srswor') #srswor = amostra sem reposição


summary(amostrairis)

summary (infert)

# 100 instancias de amostra
dim(infert)
round(120 / 248 * 100)
round(116 / 248 * 100)
round(12 / 248 * 100)

amostra <- strata(infert, c("education"), size = c(5,  48, 47), method = 'srswor')
amostra
dim(amostra)
