/* FOREIGN KEY (nome-coluna-chave-estrangeira)
REFERENCES <nome-tabela-pai> (nome-coluna-tabela-pai)
[ON DELETE NO ACTION | ON DELETE CASCADE | ON DELETE SET NULL]
[ON UPDATE NO ACTION | ON UPDATE CASCADE | ON UPDATE SET NULL] */

CREATE TABLE Produtos (
	idProduto INT IDENTITY,
	descricao VARCHAR(100) NOT NULL,
	PRIMARY KEY (idProduto)
)

CREATE TABLE Pedidos (
	idPedido INT IDENTITY,
	data DATE NOT NULL,
	PRIMARY KEY (idPedido)
)

CREATE TABLE Item_Pedidos (
	pedido INT,
	item INT,
	produto INT,
	qtdade INT,
	PRIMARY KEY (pedido, item),
	FOREIGN KEY (pedido) REFERENCES Pedidos (idPedido) ON DELETE CASCADE,
	FOREIGN KEY (produto) REFERENCES Produtos (idProduto)
)

-- Exercicio

CREATE DATABASE Pizzaria 
GO

USE Pizzaria

CREATE TABLE Cliente (
	Telefone VARCHAR(11),
	Celular VARCHAR(11),
	Cidade VARCHAR(30),
	Estado VARCHAR(2),
	End_Número INT,
	End_Bairro VARCHAR (30),
	End_CEP INT,
	End_Logradouro VARCHAR (30),
	End_Complemento VARCHAR (30),
	CPF CHAR (11),
	ID_Usuario INT PRIMARY KEY,
	Email VARCHAR (50),
	Senha VARCHAR (30),
	Nome VARCHAR (100)
)

CREATE TABLE Pedido (
	Data_Hora TIMESTAMP,
	Número_Pedido INT PRIMARY KEY,
	Tipo_De_Pagamento VARCHAR (20),
	ID_Usuario INT,
	FOREIGN KEY (ID_Usuario) REFERENCES Cliente (ID_Usuario)
)

CREATE TABLE Administrador (
	ID_Usuario INT PRIMARY KEY,
	Email VARCHAR (50),
	Senha VARCHAR (30),
	Nome VARCHAR (100)
)

CREATE TABLE Categoria (
	ID_Categoria INT PRIMARY KEY,
	Nome_Categoria VARCHAR (30)
)

CREATE TABLE Produto (
	Nome VARCHAR (100),
	ID_Produto INT PRIMARY KEY,
	Preço NUMERIC (4, 2),
	Descrição VARCHAR (100),
	Imagem VARCHAR (50),
	ID_Categoria INT,
	FOREIGN KEY (ID_Categoria) REFERENCES Categoria(ID_Categoria)
)

CREATE TABLE Itens_Pedido (
	Quantidade INT,
	Preço DECIMAL (4, 2),
	Número_Pedido INT,
	ID_Produto INT,
	FOREIGN KEY (Número_Pedido) REFERENCES Pedido (Número_Pedido),
	FOREIGN KEY (ID_Produto) REFERENCES Produto (ID_Produto)
)