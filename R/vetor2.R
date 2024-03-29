#Criando um fator
#Fatores cont�m levels e s�o objetos de classes e atributos, diferente do vetor

#vetor
estados <- c("RJ", "SP", "ES", "MG")
class(estados)
attributes(estados)

estadosf <- factor(estados)
estadosf
class(estadosf)
attributes(estadosf)

lugares <- c("Rio", "Duque de Caxias", "Rio das Ostras", "Niter�i", "Rio")

lugaresn <- factor(lugares, levels =  c("Rio", "Duque de Caxias", "Rio das Ostras", "Niter�i",  "Visconde de Mau�"))

table(lugaresn)


#Reagrupando fatores
lugaressite <- lugaresn
levels(lugaressite)

#Criterio de grupo
levels(lugaressite) <- c("Site", "Site", "Site", "App", "App")

table(lugaressite)


#Ordena��o de fatores
grau <- c("m�dio", "baixo", "m�dio", "alto", "baixo", "alto", "alto")
table(grau)

factor(grau, ord=T)

ordered(grau, levels=c("m�dio", "baixo", "alto"))

#Ordem inversa

vec <-  1:10
rev(vec)

#Cria��o dinamica
#distribui��o normal, de 7 elementos, com desvio padr�o = 10 e m�dia =70
vec <- round(rnorm(7, m=70, sd=10))
vec

sort(vec)

#which -> posi�ao do elemento que obedece um determinado crit�rio

which(vec/3 >= 25)

which.max(vec)
which.min(vec)
vec

#Remover elementos

vec [-5]
vec [-(2:5)]
