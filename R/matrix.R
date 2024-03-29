#Matrizs
#cria��o de matriz

m1 <- matrix(1:6, nc=3)
m1

m2 <-  matrix( 10*m1, nc=3)
m2


#Opera��o com matrizes
m1 + m2
m1 - m2
m1 / m2
m1 * m2
m1 ** m2


#Transposta da matriz
t(m1)

#criar matriz preenhendo pela linha
m1 <- matrix(1:12, nc =3, byrow=T)
m1

#Tamanho (quantidade de elementos)
length(m1)

#Dimens�o
dim(m1)

#Linhas
nrow(m1)

#Colunas
ncol(m1)


#Elementos na posi��o
m1[1,2]

#Elementos na posi��o da linha 3
m1[3, ]

#nome nas dimens�es
dimnames(m1)

dimnames(m1) <- list(c("l1", 'l2', 'l3', 'l4'),c('c1', 'c2', 'c3'))

m1
m1["l1",]

#combina��o de linhas
#cria��o de matriz
m2 <- cbind(1:5, 6:10)
m2

m3 <- cbind (1:5, 3)
m3

#fun��es de tabelas
#Soma -> margin -> linhas (margin = 1) e colunas (margin = 2)
margin.table(m1, margin=1)
margin.table(m1, margin=2)
m1

#apply - matriz, dimens�o, fun��o matem�tica

apply(m1, 1, max)
apply(m1, 2, max)

#Somat�rio das colunas

colSums(m1)


















