-- Where

SELECT Pedidos.* -- mostra todas as informações da tabela Pedidos dos clientes que residem no Reino Unido
FROM Pedidos, Clientes
WHERE Pedidos.Codcli = Clientes.Codcli AND Clientes.Pais = 'Reino Unido'

SELECT P.* -- mesmo resultado, mas abreviando o nome das tabelas
FROM Pedidos AS P, Clientes AS C
WHERE P.Codcli = C.Codcli AND C.Pais = 'Reino Unido'

-- Exercícios

-- 1
SELECT C.Pais, COUNT(Nome) AS quantidade
FROM Clientes C
GROUP BY Pais

-- 2
SELECT SUM(P.Preco) AS soma, AVG(P.Preco) AS média, MAX(P.Preco) AS maior, MIN(P.Preco) AS menor
FROM Produtos P

-- 3
SELECT C.Pais, COUNT(P.NumPed) AS quantidade
FROM Clientes C, Pedidos P
WHERE C.CodCli = P.CodCli
GROUP BY C.Pais
ORDER BY quantidade DESC

-- 4
SELECT F.Nome, F.Sobrenome, F.Cargo, F.Salario, F.Salario * 1.10 AS Salário_novo
FROM Funcionarios F

-- 5
SELECT SUM(DetPed.Preco) AS soma_pedidos
FROM DetalhesPed DetPed, Pedidos P
WHERE P.DataEntrega LIKE '1997-05%'

-- 6
SELECT C.CodCli, C.Nome, C.Pais
FROM Clientes C, Pedidos P
WHERE C.CodCli = P.CodCli AND P.DataPed LIKE '1997-09%'
ORDER BY C.Pais ASC

-- 7
SELECT F.Nome, P.*
FROM Funcionarios F, Pedidos P
WHERE F.CodFun = P.CodFun AND F.Nome LIKE 'A%'

-- 8
SELECT P.Descr, P.Unidades
FROM Fornecedores F, Produtos P
WHERE F.CodFor = P.CodFor AND F.Empresa = 'Exotic Liquids'

-- 9
SELECT DISTINCT P.Descr
FROM Produtos P, DetalhesPed DetPed, Pedidos Ped
WHERE P.CodProd = DetPed.CodProd AND DetPed.NumPed = Ped.NumPed AND DetPed.Qtde >= 50 AND Ped.DataPed LIKE '1997%'
ORDER BY P.Descr ASC

-- 10
SELECT DISTINCT C.Descr, P.Descr
FROM Categorias C, Produtos P, DetalhesPed DetPed, Pedidos Ped
WHERE C.CodCategoria = P.CodCategoria AND P.CodProd = DetPed.CodProd AND DetPed.NumPed = Ped.NumPed
AND DetPed.Qtde >= 50 AND Ped.DataPed LIKE '1997%'
ORDER BY C.Descr DESC