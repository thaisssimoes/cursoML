#carregando arquivo de texto
#O R mapea Meus Documentos como o workstation padrão. OU SEJA, basta colocar o arquivo na pasta que ele lê.

arquivo1 <- read.table('teste.txt')
arquivo1
arquivo1$V1


arquivo2 <- read.table('teste2.txt', head = T)
arquivo2

#Data Frame
class(arquivo2)

#Ler arquivo no formato csv - nome do arquivo, header, separados do csv, casas decimais (. ou ,)
arquivo3 <- read.table('teste3.csv', head=T, sep=';', dec =',')
arquivo3

class(arquivo3$email)

#Cria visualização de tabela. Comando com a V maiúsculo
View(arquivo3)


