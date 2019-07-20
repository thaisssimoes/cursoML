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
