-- Union

SELECT Nome, Cargo -- mostra o nome e o cargo das pessoas das duas tabelas (Clientes e Funcionarios)
FROM Clientes
UNION
SELECT Nome, Cargo
FROM Funcionarios

SELECT Nome, Cargo, 'clientes' AS tipo -- mostra o nome e o cargo das pessoas das duas tabelas e da onde cada dado vem
FROM Clientes
UNION
SELECT Nome, Cargo, 'funcionários' AS tipo
FROM Funcionarios
ORDER BY tipo

SELECT Nome, Cargo, 'clientes' AS tipo -- mostra o nome e o cargo das pessoas que residem no Brasil das duas tabelas e da onde cada dado vem
FROM Clientes
WHERE Pais = 'Brasil'
UNION
SELECT Nome, Cargo, 'funcionários' AS tipo
FROM Funcionarios
ORDER BY tipo

-- Exercicios

-- 1
SELECT TOP 1 Descr, Preco
FROM Produtos
ORDER BY Preco DESC

-- 2
SELECT TOP 5 NumPed, DataPed, Frete
FROM Pedidos
ORDER BY FRETE DESC

-- 3
SELECT Nome, Cargo, 'Cliente' AS Tipo
FROM Clientes
WHERE Pais = 'Reino Unido'
UNION
SELECT Nome, Cargo, 'Funcionário'
FROM Funcionarios
ORDER BY tipo DESC

-- 4
SELECT TOP 3 Nome, Sobrenome, Cargo, Salario 
FROM Funcionarios 
ORDER BY Salario DESC

-- 5
SELECT TOP 1 nome, Sobrenome 
FROM Funcionarios 
ORDER BY DataNasc ASC

-- 6
SELECT TOP 5 * FROM Pedidos 
ORDER BY DataPed DESC

-- 7
SELECT TOP 6 * FROM Pedidos 
WHERE YEAR(DataPed) = '1996' 
ORDER BY DataPed DESC

-- 8
SELECT Nome, Cargo 
FROM Funcionarios 
WHERE Pais = 'EUA' 
UNION SELECT Contato, Cargo FROM Fornecedores

-- 9
SELECT Nome, Contato, Pais 
FROM Clientes 
WHERE Pais = 'Brasil' UNION 
SELECT Nome, Contato, Pais 
FROM Clientes 
WHERE Pais = 'Alemanha' 

-- 10
SELECT Nome, Contato, Cidade 
FROM Clientes 
WHERE Cidade = 'Madrid' 
UNION 
SELECT Nome, Contato, Cidade 
FROM Clientes 
WHERE Cidade = 'Paris' 

-- 11
SELECT Descr, Preco 
FROM Produtos 
WHERE CodCategoria = '2' 
UNION 
SELECT Descr, Preco 
FROM Produtos 
WHERE CodCategoria = '4' 

-- 12
SELECT Nome, Cargo, Pais 
FROM Funcionarios 
WHERE Pais = 'Reino Unido' 
UNION 
SELECT Contato, Cargo, Pais 
FROM Fornecedores 
WHERE Pais = 'França'