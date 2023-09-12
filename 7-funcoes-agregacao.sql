-- Funçőes de Agregaçăo

SELECT COUNT(*) FROM Funcionario -- conta o número de colunas

SELECT COUNT(DISTINCT cidade) FROM Funcionario -- conta o número de cidades cadastradas no banco

SELECT SUM(salario) FROM Funcionario -- soma de todos os salários

SELECT AVG(salario) FROM Funcionario -- média de todos os salários

SELECT MAX(salario) FROM Funcionario -- maior valor

SELECT MIN(salario) FROM Funcionario -- menor valor

SELECT cidade, COUNT(*) AS QtdadeFuncCidade -- erro
FROM Funcionario

SELECT cidade, COUNT(*) AS QtdadeFuncCidade -- é necessário agrupar
FROM Funcionario
GROUP by cidade 

SELECT cidade, COUNT(*) -- erro
FROM Funcionario
WHERE COUNT(*) > 2
GROUP by cidade

SELECT cidade, COUNT(*) -- count năo é uma coluna e sim um parâmetro, WHERE precisa ser acompanhado de uma coluna
FROM Funcionario
GROUP by cidade
HAVING COUNT(*) > 2

-- Exercícios

-- 1
SELECT MAX(salario), MIN(salario)
FROM Funcionario
WHERE estado = 'SP'

-- 2
select SUM(salario)
FROM Funcionario
WHERE nome LIKE '%Cunha'

-- 3
SELECT AVG(salario)
FROM Funcionario
WHERE email LIKE '%yahoo%'

-- 4
SELECT COUNT(email)
FROM Funcionario
WHERE email NOT LIKE '%br'

-- 5
SELECT MAX(dataNascto)
FROM Funcionario

-- 6
SELECT MIN(dataNascto) AS Maior_Nascimento
FROM Funcionario

-- 7
SELECT COUNT(cidade) AS Quantidade_de_Valinhos
FROM Funcionario
WHERE cidade = 'Valinhos'

-- 8
SELECT SUM(salario)
FROM Funcionario
WHERE cidade = 'Campinas'

-- 9
SELECT AVG(salario)
FROM Funcionario
WHERE cidade = 'Săo Paulo'

-- 10
SELECT SUM(salario)
FROM Funcionario
WHERE nome LIKE 'Ana%'

-- 11
SELECT COUNT(nome)
FROM Funcionario
WHERE nome LIKE '%Luis%'

-- 12
SELECT MAX(salario), MIN(salario)
FROM Funcionario
WHERE endereco LIKE 'Av. Săo Paulo%'

-- 13
SELECT cargo, COUNT(cargo)
FROM Funcionario
GROUP by cargo
ORDER by COUNT(cargo) ASC

-- 14
SELECT cargo, COUNT(cargo)
FROM Funcionario
GROUP by cargo
HAVING NOT cargo = 'NULL'

-- 15
SELECT cargo, AVG(salario) AS Media_Salarios_Cargo
FROM Funcionario
GROUP by cargo

-- 16
SELECT cargo, SUM(salario)
FROM Funcionario
GROUP by cargo
HAVING SUM(salario) > 3000

-- 17
SELECT cargo, SUM(salario)
FROM Funcionario
WHERE estado = 'SP'
GROUP by cargo

-- 18
UPDATE Funcionario
SET ativo = 1
WHERE cidade = 'Jundiaí' OR cidade = 'Săo Paulo'

-- 19
UPDATE Funcionario
SET ativo = 0
WHERE cidade <> 'Jundiaí' AND cidade <> 'Săo Paulo'

-- 20
SELECT ativo, COUNT(ativo)
FROM Funcionario
WHERE ativo = 0 OR ativo = 1
GROUP by ativo

-- 21
SELECT cidade, SUM(salario)
FROM Funcionario
GROUP by cidade

-- 22
SELECT cidade, AVG(salario)
FROM Funcionario
WHERE salario IS NOT NULL
GROUP by cidade

-- 23
SELECT cargo, SUM(salario), AVG(salario)
FROM Funcionario
GROUP by cargo
HAVING SUM(salario) < 5000

-- 24
SELECT cidade, cargo, SUM(salario), AVG(salario)
FROM Funcionario
GROUP by cidade, cargo

SELECT *
FROM Funcionario
