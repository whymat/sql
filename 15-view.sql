-- View

CREATE VIEW Salario_Func AS -- cria uma visão chamada 'Salario_Func' que mostre apenas nome, sobrenome, e salário dos funcionários
SELECT Nome, Sobrenome, Salario
FROM Funcionarios

SELECT * -- utilizando a visão 'Salario_func' que mostre apenas os funcionários que possuem salário maior que 7000
FROM Salario_Func
WHERE Salario > 7000

ALTER VIEW Salario_Func AS -- altera a visão Select_Func adicionando uma nova coluna
SELECT Nome, Sobrenome, Cargo, Salario
FROM Funcionarios

SELECT *
FROM Salario_Func
WHERE Salario > 7000

DROP VIEW Salario_Func -- apaga a visão 'Salario_Func'

-- Exercícios

-- 1
CREATE VIEW Preco_Baixo AS
SELECT CodProd, Descr, Preco
FROM Produtos 
WHERE Preco < ALL (SELECT AVG(Preco)
				   FROM Produtos)

-- 2
SELECT *
FROM Preco_Baixo
WHERE Descr LIKE 'C%'

-- 3
CREATE VIEW Funcionarios_Cargo AS
SELECT Cargo, COUNT(*) AS quantidade_cargo
FROM Funcionarios
GROUP BY Cargo

-- 4
SELECT Cargo, quantidade_cargo
FROM Funcionarios_Cargo
WHERE quantidade_cargo = (SELECT MAX(quantidade_cargo)
						  FROM Funcionarios_Cargo)
 
-- 5
CREATE VIEW Produtos_Categoria AS
SELECT P.Descr AS DescrProd, C.Descr AS DescrCateg
FROM Produtos P INNER JOIN Categorias C
ON P.CodCategoria = C.CodCategoria

-- 6
SELECT DescrCateg, COUNT(*) as quantidade_categ
FROM Produtos_Categoria
GROUP BY DescrCateg

-- 7
CREATE VIEW Clientes_Resumo AS
SELECT CodCli, Nome, Contato, Pais
FROM Clientes

-- 8
CREATE VIEW Pedidos_Resumo_abr97 AS
SELECT NumPed, CodCli, DataEntrega
FROM Pedidos
WHERE MONTH(DataEntrega) = 4 AND YEAR(DataEntrega) = 1997

-- 9
SELECT C.Nome
FROM Clientes_Resumo C
WHERE C.CodCli IN (SELECT P.CodCli
				   FROM Pedidos_Resumo_abr97 P)

-- 10
CREATE VIEW Clientes_Resumo_W AS
SELECT Nome
FROM Clientes_Resumo
WHERE Nome LIKE 'W%'

-- 11
DROP VIEW Clientes_Resumo_W, Pedidos_Resumo_abr97, Preco_Baixo