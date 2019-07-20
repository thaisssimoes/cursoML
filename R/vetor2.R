#Criando um fator
#Fatores cont�m levels e s�o objetos de calsses diferentes do vetor

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