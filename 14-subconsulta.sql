-- Subconsultas

--  IN, NOT IN
SELECT Nome, Contato, Cargo
FROM Clientes
WHERE CodCli IN (SELECT CodCli
				 FROM Pedidos
				 WHERE DataPed BETWEEN '1996-08-01' AND '1996-08-31') -- mostra o nome, o contato e o cargo de todos os clientes que fizeram pedido em agosto de 1996

SELECT DISTINCT Nome, Contato, Cargo
FROM Clientes C INNER JOIN Pedidos P
ON C.CodCli = P.CodCli
WHERE DataPed BETWEEN '1996-08-01' AND '1996-08-31'

SELECT CodProd, Descr, MAX(Preco) -- dá erro, pois CodProd e Descr tem várias linhas, MAX mostra apenas uma
FROM Produtos

SELECT TOP 2 CodProd, Descr, Preco -- mostra o código, a descrição e o preço dos produtos mais caros
FROM Produtos
ORDER BY Preco DESC

SELECT CodProd, Descr, Preco -- mostra o código, a descrição e o preço dos produtos mais caros
FROM Produtos
WHERE Preco = (SELECT MAX(Preco) -- retorna uma única linha
			   FROM Produtos)

-- ALL (AND), ANY (OR)
SELECT Nome, Sobrenome, Cargo, Salario -- mostra nome, sobrenome, cargo e salário de todos os representantes de vendas cujos salários sejam superiores aos de todos os gerentes e coordenadores
FROM Funcionarios
WHERE Cargo LIKE '%Representante de Vendas%'
AND Salario >  ALL (SELECT Salario
					FROM Funcionarios
					WHERE Cargo LIKE '%Gerente%'
					OR Cargo LIKE '%Coordenador%')

-- Exists
SELECT Nome
FROM Funcionarios
WHERE EXISTS (SELECT *
			  FROM Fornecedores
			  WHERE Pais = 'Brasil') -- mostra o nome dos funcionários se existirem fornecedores do Brasil

-- Exercícios

-- 1
SELECT *
FROM Pedidos
WHERE CodCli IN (SELECT CodCli
				 FROM Clientes
				 WHERE Pais LIKE 'Alemanha')

-- 2
SELECT *
FROM Produtos
WHERE CodCategoria IN (SELECT CodCategoria
					   FROM Categorias
					   WHERE Descr LIKE 'Condimentos')

-- 3
SELECT Descr
FROM Produtos
WHERE CodFor NOT IN (SELECT CodFor
					 FROM Fornecedores
					 WHERE Pais LIKE 'EUA')

-- 4
SELECT P.Descr
FROM Produtos P
WHERE P.CodProd NOT IN (SELECT DetPed.CodProd
						FROM DetalhesPed DetPed INNER JOIN Pedidos P
						ON DetPed.NumPed = P.NumPed
						WHERE YEAR(P.DataPed) = 1997 AND MONTH(P.DataPed) = 3)

-- 5
SELECT CodProd, Descr, Preco
FROM Produtos
WHERE Preco = (SELECT MIN(Preco)
			   FROM Produtos)

-- 6
SELECT Nome, Salario
FROM Funcionarios
WHERE Salario = (SELECT MAX(Salario)
				 FROM Funcionarios)

-- 7
SELECT Nome, Salario
FROM Funcionarios
WHERE Salario = (SELECT MAX(Salario) FROM Funcionarios) OR Salario = (SELECT MIN(Salario) FROM Funcionarios)
ORDER BY Salario ASC

-- 8
SELECT CodProd, Descr, Preco
FROM Produtos
WHERE Preco > (SELECT AVG(Preco)
			   FROM Produtos)

-- 9
SELECT Nome, Sobrenome, Cargo, Salario
FROM Funcionarios
WHERE Cargo = 'Representante de Vendas' AND Salario < ALL (SELECT Salario
														   FROM Funcionarios
														   WHERE Cargo LIKE 'Gerente%' OR Cargo LIKE 'Coordenador%')

-- 10
SELECT Nome, Sobrenome, Cargo, Salario
FROM Funcionarios
WHERE Cargo LIKE 'Coordenador%' AND Salario > ANY (SELECT Salario
												   FROM Funcionarios
												   WHERE Cargo LIKE 'Representante%')

-- 11
SELECT Nome, Pedidos.*
FROM Funcionarios RIGHT OUTER JOIN Pedidos
ON Funcionarios.CodFun = Pedidos.CodFun
WHERE Pedidos.Frete > ALL (SELECT AVG(Frete)
						   FROM Pedidos)

-- 12
SELECT *
FROM Produtos
WHERE Preco < ALL (SELECT Preco
				   FROM Produtos
				   WHERE CodCategoria = 3)

-- 13
SELECT Nome
FROM Funcionarios
WHERE Salario > (SELECT MIN(Salario) FROM Funcionarios) AND Salario < (SELECT MAX(Salario) FROM Funcionarios)

-- 14
SELECT DISTINCT F.Nome
FROM Funcionarios F
WHERE F.CodFun IN (SELECT P.CodFun
				   FROM Pedidos P INNER JOIN Clientes C
				   ON P.CodCli = C.CodCli
				   WHERE C.Pais <> 'Brasil')

-- 15
SELECT Descr
FROM Produtos
WHERE CodCategoria <> 3 AND Preco > ALL (SELECT MIN(Preco) FROM Produtos) AND Preco < ALL (SELECT MAX(Preco) FROM Produtos)