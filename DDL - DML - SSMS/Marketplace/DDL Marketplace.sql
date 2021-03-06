-- DDL MARKETPLACE
-- CREATE
-- ALTER
-- DROP

CREATE DATABASE db_Marketplace

USE db_Marketplace

CREATE TABLE Clientes(
	Id INT PRIMARY KEY NOT NULL,
	Nome VARCHAR(100) NOT NULL,
	Email VARCHAR(100) NOT NULL,
	Senha VARCHAR(100) NOT NULL,
	Endereco VARCHAR(100) NOT NULL,
	DadosPagamento VARCHAR(100) NULL
)

CREATE TABLE Categorias(
	Id INT PRIMARY KEY NOT NULL,
	Rastreamento VARCHAR(100) NOT NULL,
	Status VARCHAR(100) NOT NULL,
)

CREATE TABLE Produtos(
	Id INT PRIMARY KEY NOT NULL,
	Item VARCHAR(100) NOT NULL,
	Preco FLOAT NULL,
	Estoque INT NOT NULL,
	FK_Categoria INT NOT NULL,
	FOREIGN KEY (FK_Categoria) REFERENCES Categorias(Id),
	FK_Anunciante INT NOT NULL,
	FOREIGN KEY (FK_Anunciante) REFERENCES Clientes(Id)
)

CREATE TABLE Carrinho(
	Id INT PRIMARY KEY NOT NULL,
	Frete VARCHAR(100) NOT NULL,
	Resumo VARCHAR(100) NOT NULL,
	Pagamento VARCHAR(100) NOT NULL,
	FK_Produto INT NOT NULL,
	FOREIGN KEY (FK_Produto) REFERENCES Produtos(Id),
	FK_Cliente INT NOT NULL,
	FOREIGN KEY (FK_Cliente) REFERENCES Clientes(Id)
)