#anova
#Carregar os dados

tratamento <- read.csv(file.choose(), sep =';', header=T)
View (tratamento)

dim(tratamento)

#Criação do boxplot para 3 tipos de remédio
boxplot(tratamento$Horas ~ tratamento$Remedio)

an <- aov(Horas ~ Remedio, data=tratamento)
an

#Grau de liberdade
#Diferença entre a quantidade de instancias pelo numero estudado

#Residuos
#São as instâncias

summary(an)

#Aplicar o teste de tukey
tukey = TukeyHSD(an)
tukey

an <- aov(Horas ~ Remedio * Sexo, data= tratamento)
an
summary(an)

tukey = TukeyHSD(an)
tukey



































