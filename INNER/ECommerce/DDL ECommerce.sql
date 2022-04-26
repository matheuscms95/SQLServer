-- DDL E-COMMERCE
-- CREATE
-- ALTER
-- DROP

CREATE DATABASE db_ECommerce

USE db_ECommerce

CREATE TABLE Clientes(
	Id INT PRIMARY KEY NOT NULL,
	Nome VARCHAR(100) NOT NULL,
	Email VARCHAR(100) NOT NULL,
	Senha VARCHAR(100) NOT NULL,
	Endereco VARCHAR(100) NOT NULL,
	DadosPagamento VARCHAR(100) NULL
)

CREATE TABLE Produtos(
	Id INT PRIMARY KEY NOT NULL,
	Item VARCHAR(100) NOT NULL,
	Preco FLOAT NULL,
	Estoque INT NOT NULL
)

CREATE TABLE Carrinhos(
	Id INT PRIMARY KEY NOT NULL,
	Frete VARCHAR(100) NOT NULL,
	Resumo VARCHAR(100) NOT NULL,
	Pagamento VARCHAR(100) NOT NULL,
	FK_Produto INT NOT NULL,
	FOREIGN KEY (FK_Produto) REFERENCES Produtos(Id),
	FK_Cliente INT NOT NULL,
	FOREIGN KEY (FK_Cliente) REFERENCES Clientes(Id)
)

CREATE TABLE Categorias(
	Id INT PRIMARY KEY NOT NULL,
	Rastreamento VARCHAR(100) NOT NULL,
	Status VARCHAR(100) NOT NULL,
	FK_Carrinho INT NOT NULL,
	FOREIGN KEY (FK_Carrinho) REFERENCES Carrinhos(Id)
)