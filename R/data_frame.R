#Data frame

d1 <- data.frame(x=1:10, y = c(51, 54, 61, 67, 68, 75, 77, 75, 80, 82 ))
d1

#Nomes das colunas
names(d1)

class (d1)

#Acessar as colunas pelo nome
d1$x
d1$y

#plotagem os dadosdo dataframe
plot(d1)
plot(d1$x)
plot(d1$y)

d2 <- data.frame(x=1:10, y = 11:20, z= 21:30)
d2














