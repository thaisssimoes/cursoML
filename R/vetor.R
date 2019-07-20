#Atribuição de variável

c <- 10 #Atribuição mais comum
d = 10

#Criação de vetor
#Vetores são criados com a função c
#Precisam ser do mesmo tipo

vetor <- c(12, 15, 20)
nomes <- c("Maria", "João", "Luiz", "Carla")

vetor
nomes

#Primeira posição
nomes[1]

#Tamanho do vetor
length(nomes)

#Verificação de tipo de dados (se é um vetor)
is.vector(vetor)

#vetor com conceito de intervalo

numero <- 1:10
numero


#Função seq

numero2 <- seq(0, 2, by=0.35)
numero2

#Vetores de tipo diferentes não fucionam. Se voce tentar criar um vetor com a função c com uma string
#e um numero, ele converte tudo para string


#Operações matemáticas

operacao <- c(10, 25.3, 17.4, 45.7)

operacao + 3
operacao - 3
operacao / 3
operacao * 3

#Funções em vetores

round((operacao*50)/15.6, 3)

#Vetor de elemento repetidos

repetido <- rep (1, 3)

repetidos <- rep (c(1,2), c( 4,8))

repetido
repetidos

#Função paste

nome <- paste(nomes, c("Arroz", "Feijão"))

nome
 
rep(paste("T", 1:3, sep=""), c(55, 2, 1))








