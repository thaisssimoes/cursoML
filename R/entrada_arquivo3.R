#Instalando o pacote -> R, para acessar o postgres

#install.packages("RPostgreSQL", dependencies = T)

library('RPostgreSQL')

#Conectando ao banco de dados
con <- dbConnect(PostgreSQL(), user = 'postgres', password = 'coti', dbname = 'aular')

#Executar uma consulta no banco de dados pelo R
rs <- dbSendQuery(con, "SELECT * from produto order by nome")
rs

#Fetch dos dados do cursor. O -1 significa que ele vai "varrer" enquanto houver registro
df <- fetch (rs, n = -1)
df
class (df)

dim(df)

head(df)

dbListTables(con)

tail(df)


#getQuery - retorna uma consulta pronta em data frame

produtos <- dbGetQuery(con, statement = "SELECT * from produto order by preco desc")
produtos

