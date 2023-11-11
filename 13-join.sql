-- INNER JOIN

SELECT Produtos.Descr AS produto, Categorias.Descr AS categoria -- mostra a descrição do produto, bem como sua categoria
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

SELECT C.Nome, P.NumPed -- mostra todos os nomes dos clientes, o nº do pedido que eles fizeram em 1996 e os clientes que não fizeram pedido
FROM Clientes C RIGHT OUTER JOIN Pedidos P
ON P.CodCli = C.CodCli
WHERE P.DataPed BETWEEN '1996-01-01' AND '1996-12-31'

SELECT C.Nome, P.NumPed -- mostra todos os nomes dos clientes, o nº do pedido que eles fizeram em 1996, os clientes que não possuem pedidos e os pedidos que não possuem clientes
FROM Clientes C FULL OUTER JOIN Pedidos P
ON P.CodCli = C.CodCli
WHERE P.DataPed BETWEEN '1996-01-01' AND '1996-12-31'

-- CROSS JOIN

SELECT F.Nome, C.Nome -- mostra o nome dos funcionários e clientes sabendo que todos os funcionários atendem todos os clientes
FROM Funcionarios F CROSS JOIN Clientes C

-- Exercícios

-- 1
SELECT C.*, P.DataPed
FROM Clientes C LEFT OUTER JOIN Pedidos P
ON P.CodCli = C.CodCli
WHERE P.DataPed BETWEEN '1996-01-01' AND '1996-12-31'

-- 2SELECT DISTINCT F.*FROM Funcionarios F INNER JOIN Pedidos PON F.CodFun = P.CodFunINNER JOIN Clientes CON P.CodCli = C.CodCliWHERE C.Nome = 'Around the Horn'-- 3SELECT P.*FROM Pedidos P INNER JOIN Clientes CON P.CodCli = C.CodCliWHERE C.Nome = 'Comércio Mineiro'-- 4SELECT F.*FROM Funcionarios F INNER JOIN Pedidos PON F.CodFun = P.CodFunWHERE P.DataPed LIKE '1996-09%'-- 5SELECT P.*, C.DescrFROM Produtos P LEFT OUTER JOIN Categorias CON P.CodCategoria = C.CodCategoriaWHERE C.Descr = 'Laticínios'-- 6SELECT DISTINCT Prod.*, Ped.NumPedFROM Produtos Prod INNER JOIN DetalhesPed DetPedON Prod.CodProd = DetPed.CodProdINNER JOIN Pedidos PedON DetPed.NumPed = Ped.NumPedWHERE Ped.DataPed LIKE '1996-07-08'-- 7SELECT F.Nome, P.NumPedFROM Funcionarios F INNER JOIN Pedidos PON F.CodFun = P.CodFunWHERE P.DataPed LIKE '1997-05-01'-- 8SELECT F.Nome, P.*FROM Funcionarios F RIGHT OUTER JOIN Pedidos PON F.CodFun = P.CodFunWHERE F.Salario > 10000-- 9SELECT P.NumPed, C.NomeFROM Pedidos P INNER JOIN Clientes CON P.CodCli = C.CodCliWHERE P.DataPed LIKE '1997-05%'-- 10SELECT DISTINCT C.Descr, Prod.DescrFROM Categorias C INNER JOIN Produtos ProdON C.CodCategoria = Prod.CodCategoriaINNER JOIN DetalhesPed DetPedON Prod.CodProd = DetPed.CodProdINNER JOIN Pedidos PedON DetPed.NumPed = Ped.NumPedWHERE Prod.Unidades <= 10 AND Ped.DataPed LIKE '1998%'ORDER BY C.Descr DESC-- 11SELECT DetPed.*FROM DetalhesPed DetPed LEFT OUTER JOIN Pedidos PON DetPed.NumPed = P.NumPedWHERE P.DataEntrega LIKE '1998%'-- 12SELECT DISTINCT C.Descr, P.DescrFROM Categorias C INNER JOIN Produtos PON C.CodCategoria = P.CodCategoria