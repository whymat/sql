-- INNER JOIN

SELECT Produtos.Descr AS produto, Categorias.Descr AS categoria -- mostra a descri��o do produto, bem como sua categoria
FROM Produtos INNER JOIN Categorias
ON Produtos.CodCategoria = Categorias.CodCategoria

SELECT Produtos.Descr AS produto, Categorias.Descr AS categoria
FROM Produtos, Categorias
WHERE Produtos.CodCategoria = Categorias.CodCategoria

SELECT DISTINCT C.Descr -- mostra a categoria dos produtos fornecidos pela empresa 'Exotic Liquids'
FROM Categorias C INNER JOIN Produtos P
ON C.CodCategoria = P.CodCategoria
INNER JOIN Fornecedores F
ON P.CodFor = F.CodFor
WHERE Empresa = 'Exotic Liquids'

-- OUTER JOIN

SELECT C.Nome, P.NumPed -- mostra todos os nomes dos clientes, o n� do pedido que eles fizeram em 1996 e os clientes que n�o fizeram pedido
FROM Clientes C RIGHT OUTER JOIN Pedidos P
ON P.CodCli = C.CodCli
WHERE P.DataPed BETWEEN '1996-01-01' AND '1996-12-31'

SELECT C.Nome, P.NumPed -- mostra todos os nomes dos clientes, o n� do pedido que eles fizeram em 1996, os clientes que n�o possuem pedidos e os pedidos que n�o possuem clientes
FROM Clientes C FULL OUTER JOIN Pedidos P
ON P.CodCli = C.CodCli
WHERE P.DataPed BETWEEN '1996-01-01' AND '1996-12-31'

-- CROSS JOIN

SELECT F.Nome, C.Nome -- mostra o nome dos funcion�rios e clientes sabendo que todos os funcion�rios atendem todos os clientes
FROM Funcionarios F CROSS JOIN Clientes C

-- Exerc�cios

-- 1
SELECT C.*, P.DataPed
FROM Clientes C LEFT OUTER JOIN Pedidos P
ON P.CodCli = C.CodCli
WHERE P.DataPed BETWEEN '1996-01-01' AND '1996-12-31'

-- 2