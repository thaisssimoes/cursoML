#outliers
#iris -> dataset

iris
dim(iris)

boxplot(iris)

boxplot(iris$Sepal.Width)

boxplot(iris$Sepal.Width, outline = F)
boxplot.stats(iris$Sepal.Width)$out

#Pacote utilizado para trabalhar com Outlier
install.packages("outliers")

library(outliers)

#superiores
outlier(iris$Sepal.Width)

#inferiores
outlier(iris$Sepal.Width, opposite = T)
