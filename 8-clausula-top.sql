SELECT *
FROM Funcionario

SELECT TOP 3 * -- exibir apenas as 3 primeiras linhas
FROM Funcionario

SELECT TOP 50 PERCENT * -- exibir apenas a primeira metade das linhas (50%)
FROM Funcionario

SELECT TOP 3 nome, dataNascto -- exibir as 3 pessoas mais novas
FROM Funcionario
ORDER BY dataNascto DESC

-- Exercicios

-- 1
SELECT TOP 4 nome
FROM Funcionario

-- 2
SELECT TOP 2 nome, dataNascto
FROM Funcionario
WHERE cidade = 'Valinhos'

-- 3
SELECT TOP 1 nome, dataNascto
FROM Funcionario
ORDER BY dataNascto ASC

-- 4
SELECT TOP 2 cidade, COUNT(idFuncionario)
FROM Funcionario
GROUP BY cidade

-- 5
SELECT TOP 2 cargo, COUNT(idFuncionario)
FROM Funcionario
GROUP BY cargo

-- 6
SELECT TOP 30 PERCENT *
FROM Funcionario

-- 7
SELECT TOP 6 nome, email
FROM Funcionario

-- 8
SELECT TOP 70 PERCENT idFuncionario, cargo, ativo
FROM Funcionario

-- 9
SELECT TOP 1 idFuncionario, salario
FROM Funcionario
WHERE salario IS NOT NULL
ORDER BY salario ASC

-- 10
SELECT TOP 1 nome, salario
FROM Funcionario
ORDER BY salario DESC

-- 11
SELECT TOP 1 nome, endereco
FROM Funcionario

-- 12
SELECT TOP 90 PERCENT *
FROM Funcionario

-- 13
SELECT TOP 1 *
FROM Funcionario
WHERE cidade = 'São Paulo'

-- 14
SELECT TOP 20 PERCENT nome, endereco, cidade, estado
FROM Funcionario

-- 15
SELECT TOP 2 *
FROM Funcionario
WHERE YEAR(dataNascto) = 1988