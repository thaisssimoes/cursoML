#Atribui��o de vari�vel

c <- 10 #Atribui��o mais comum
d = 10

#Cria��o de vetor
#Vetores s�o criados com a fun��o c
#Precisam ser do mesmo tipo

vetor <- c(12, 15, 20)
nomes <- c("Maria", "Jo�o", "Luiz", "Carla")

vetor
nomes

#Primeira posi��o
nomes[1]

#Tamanho do vetor
length(nomes)

#Verifica��o de tipo de dados (se � um vetor)
is.vector(vetor)

#vetor com conceito de intervalo

numero <- 1:10
numero


#Fun��o seq

numero2 <- seq(0, 2, by=0.35)
numero2

#Vetores de tipo diferentes n�o fucionam. Se voce tentar criar um vetor com a fun��o c com uma string
#e um numero, ele converte tudo para string


#Opera��es matem�ticas

operacao <- c(10, 25.3, 17.4, 45.7)

operacao + 3
operacao - 3
operacao / 3
operacao * 3

#Fun��es em vetores

round((operacao*50)/15.6, 3)

#Vetor de elemento repetidos

repetido <- rep (1, 3)

repetidos <- rep (c(1,2), c( 4,8))

repetido
repetidos

#Fun��o paste

nome <- paste(nomes, c("Arroz", "Feij�o"))

nome
 
rep(paste("T", 1:3, sep=""), c(55, 2, 1))








