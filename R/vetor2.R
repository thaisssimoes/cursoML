#Criando um fator
#Fatores contém levels e são objetos de calsses diferentes do vetor

#vetor
estados <- c("RJ", "SP", "ES", "MG")
class(estados)
attributes(estados)

estadosf <- factor(estados)
estadosf
class(estadosf)
attributes(estadosf)

lugares <- c("Rio", "Duque de Caxias", "Rio das Ostras", "Niterói", "Rio")

lugaresn <- factor(lugares, levels =  c("Rio", "Duque de Caxias", "Rio das Ostras", "Niterói",  "Visconde de Mauá"))

table(lugaresn)


#Reagrupando fatores
lugaressite <- lugaresn
levels(lugaressite)

#Criterio de grupo
levels(lugaressite) <- c("Site", "Site", "Site", "App", "App")

table(lugaressite)


#Ordenação de fatores
grau <- c("médio", "baixo", "médio", "alto", "baixo", "alto", "alto")
table(grau)

factor(grau, ord=T)

ordered(grau, levels=c("médio", "baixo", "alto"))

#Ordem inversa

vec <-  1:10
rev(vec)

#Criação dinamica
#distribuição normal, de 7 elementos, com desvio padrão = 10 e média =70
vec <- round(rnorm(7, m=70, sd=10))
vec

sort(vec)

#which -> posiçao do elemento que obedece um determinado critério

which(vec/3 >= 25)

which.max(vec)
which.min(vec)
vec

#Remover elementos

vec [-5]
vec [-(2:5)]
