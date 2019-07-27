#Datasets no R
data('mtcars')
head(mtcars)
dim(mtcars)
fix(mtcars) #se editar, a base também será editado

#Carregamento de arquivo XLS, XLSX
#install.packages('gdata', dependencies= T)
#install.packages('gtools', dependencies = T)

library('gdata')

#Caminho para o arquivo do excel
arquivo <- file.path('teste4.xlsx')
arquivo

#Analisando o arquivo xls com as planilhas
#contando e nomeando as planilhas

sheetCount(arquivo)
sheetNames(arquivo)

#fazer o download da linguagem perl para funcionar a conversão
clientes <- read.xls('teste4.xlsx', verbose = T, perl = 'perl', sheet = 1)
produtos <- read.xls('teste4.xlsx', verbose = T, perl = 'perl', sheet = 'produtos')
enderecos <- read.xls('teste4.xlsx', verbose = T, perl = 'perl', sheet = 3)

View(clientes)
produtos
enderecos
