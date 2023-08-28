-- Funções de Data e Hora

SET DATEFORMAT YMD -- ano, mês, dia; é o sistema padrão dos EUA

SELECT GETDATE() -- retorna a data atual do sistema

SELECT nome, DAY(dataNascto) -- retorna o dia de uma data
FROM Funcionario

SELECT nome, MONTH(dataNascto) -- retorna o mês de uma data
FROM Funcionario

SELECT nome, YEAR(dataNascto) -- retorna o ano de uma data
FROM Funcionario

-- DateADD

SELECT DATEADD (DAY, 5, dataNascto) -- adiciona 5 dias na coluna "Data de Nascimento"
FROM Funcionario

SELECT DATEADD (MONTH, 2, dataNascto) -- adiciona 2 meses na coluna "Data de Nascimento"
FROM Funcionario

SELECT DATEADD (YEAR, 3, dataNascto) -- adiciona 3 anos na coluna "Data de Nascimento"
FROM Funcionario

-- DateDiff

SELECT DATEDIFF(DAY, dataNascto, GETDATE()) -- apresenta a diferença em dias entre a data da tabela e a data atual
FROM Funcionario

SELECT DATEDIFF(MONTH, dataNascto, GETDATE()) -- apresenta a diferença em meses entre a data da tabela e a data atual
FROM Funcionario

SELECT DATEDIFF(YEAR, dataNascto, GETDATE()) -- apresenta a diferença em anos entre a data da tabela e a data atual
FROM Funcionario

SELECT DATEDIFF(DAY, '2004-04-19', '2023-12-31')
SELECT DATEDIFF(MONTH, '2004-04-19', GETDATE())
SELECT DATEDIFF(YEAR, '2004-04-19', GETDATE())

-- DateName
SELECT DATENAME(MONTH, dataNascto) -- apresenta o nome do mês
FROM Funcionario

SELECT DATENAME(WEEKDAY, dataNascto) -- apresenta o nome do dia da semana
FROM Funcionario

SELECT DATENAME(WEEKDAY, '2004-04-19')

-- Exercicios

-- 1
SELECT nome, DAY(dataNascto) AS dia, MONTH(dataNascto) AS mês, YEAR(dataNascto) AS ano
FROM Funcionario

-- 2
SELECT DISTINCT DATENAME(MONTH, dataNascto) AS mês, MONTH(dataNascto) AS NºMês
FROM Funcionario
ORDER BY MONTH(dataNascto)

-- 3
SELECT idFuncionario, nome
FROM Funcionario
WHERE dataNascto LIKE '1987%'

-- 4
SELECT nome, dataNascto
FROM Funcionario
WHERE dataNascto LIKE '1988-04%'

-- 5
SELECT nome, DATEADD (MONTH, 2, dataNascto) AS acréscimo
FROM Funcionario

-- 6
SELECT nome, DATEDIFF(YEAR, dataNascto, GETDATE()) AS idade
FROM Funcionario

-- 7
SELECT idFuncionario, nome, YEAR(dataNascto) AS ano
FROM Funcionario
WHERE MONTH(dataNascto) BETWEEN '03' AND '05' AND YEAR(dataNascto) = 1990

-- 8
SELECT nome, YEAR(dataNascto) AS ano
FROM Funcionario
WHERE estado = 'SP'

-- 9
SELECT nome, dataNascto
FROM Funcionario
WHERE YEAR(dataNascto) < 1990

-- 10
SELECT DISTINCT cidade, estado
FROM Funcionario
WHERE YEAR(dataNascto) > 1989

-- 11
SELECT *
FROM Funcionario
WHERE YEAR(dataNascto) = 1988 OR YEAR(dataNascto) = 1990

-- 12
SELECT nome
FROM Funcionario
WHERE DAY(dataNascto) = 30

SELECT *
FROM Funcionario