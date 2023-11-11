-- Exercicios

-- 1
CREATE DATABASE Compras
GO

-- 2
USE Compras
GO

-- 3
CREATE TABLE Cliente (
	idCliente INT IDENTITY PRIMARY KEY,
	nome VARCHAR(50),
	endereco VARCHAR(50),
	cidade VARCHAR(50),
	estado CHAR(2),
)

CREATE TABLE Produto (
	idProduto INT IDENTITY PRIMARY KEY,
	descricao VARCHAR(50),
	preco DECIMAL(5, 2),
	qtde INT
)

CREATE TABLE Compras (
	idCompra INT IDENTITY (1000, 2) PRIMARY KEY,
	idCliente INT,
	idProduto INT,
	data DATETIME,
	qtde INT,
	valor DECIMAL (5, 2),
	FOREIGN KEY (idCliente) REFERENCES Cliente (idCliente) ON DELETE CASCADE,
	FOREIGN KEY (idProduto) REFERENCES Produto (idProduto) ON DELETE CASCADE
)
GO

--4
ALTER TABLE Cliente
ADD sexo CHAR(1)
GO

-- 5
INSERT INTO Cliente
VALUES
('Jos� de Oliveira', 'Av. Jatob�, 34', 'Jundia�', 'SP', 'F'),
('Maria da Silva', 'Av. Presidente, 12', 'Itatiba', 'MG', 'F'),
('Ant�nio Carlos', 'R. Floren�a, 5', 'Jundia�', 'SP', 'M'),
('Lu�sa de Souza', 'Av. Jatob�, 45', 'Jundia�', 'MG', 'F'),
('Carlos de Souza', 'Av. Jatob�, 45', 'Jundia�', 'SP', 'M')
GO

-- 6
INSERT INTO Produto
VALUES
('L�pis', 1.50, 20),
('Borracha', 1.00, 15),
('Caneta', 1.75, 35),
('Compasso', 5.20, 10),
('R�gua', 0.75, 16),
('Papel Sulfite', 10.50, 5)
GO

-- 7
INSERT INTO Compras
VALUES
(1, 1, '01-12-2010', 2, 1.50),
(2, 1, '03-12-2010', 5, 1.50),
(1, 3, '05-01-2011', 13, 1.75),
(1, 4, '11-01-2011', 1, 5.20),
(3, 2, '16-03-2011', 7, 1.00),
(4, 5, '21-05-2011', 10, 0.75),
(2, 6, '07-06-2011', 2, 10.50),
(5, 3, '07-06-2011', 2, 1.75)
GO

-- 8
UPDATE Cliente
WHERE descricao = 'Papel Sulfite'
WHERE idCompra = 1000

WHERE idCliente BETWEEN 3 AND 5