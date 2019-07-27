-- Arquivo de banco de dados
-- POSTGRESQL

-- excluir uma base de dados
DROP DATABASE aular;

-- Criar uma base de dados
CREATE DATABASE aular;
\c aular;

-- Criar uma tabela
CREATE TABLE produto(
codigo serial primary key,
nome varchar(50) not null,
preco float not null,
quantidade int not null

);

\d produto;
\d

-- INSERIR DADOS
INSERT INTO produto(nome, preco, quantidade) VALUES ('PS4', 1200.0, 10);
INSERT INTO produto(nome, preco, quantidade) VALUES ('XBOX one', 400.0, 3);
INSERT INTO produto(nome, preco, quantidade) VALUES ('Nintendo Switch', 1700.0, 7);
INSERT INTO produto(nome, preco, quantidade) VALUES ('Mega Driver', 1800.0, 8);

INSERT INTO produto(nome, preco, quantidade) VALUES ('Geladeira', 1200.0, 10);
INSERT INTO produto(nome, preco, quantidade) VALUES ('TV LCD', 1350.0, 3);
INSERT INTO produto(nome, preco, quantidade) VALUES ('Monitor', 500.0, 7);
INSERT INTO produto(nome, preco, quantidade) VALUES ('TV LCD 42', 1500.0, 8);
