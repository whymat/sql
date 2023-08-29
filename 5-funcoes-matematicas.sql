-- Funções Matemáticas

SELECT ABS(-10) -- retira o negativo (módulo)

SELECT POWER(2, 3) -- potenciação

SELECT SQRT(25) -- radiciação

SELECT ROUND(7.56, 1) -- arredondar 1 casa

SELECT LOG(4) -- logaritmo

SELECT PI() -- valor de PI

SELECT ROUND(LOG(SQRT(9)), 3)

SELECT PI() / 3 -- valor de PI dividido por 3

SELECT ROUND(PI(), 2) -- arredonda PI para 2 casas

SELECT ROUND(salario, 0) -- arrenda os valores da tabela salário
FROM Funcionario

-- Exercícios

-- 1
SELECT nome, salario + PI()
FROM Funcionario

-- 2
SELECT SQRT(DAY(dataNascto))
FROM Funcionario

-- 3
SELECT LOG(MONTH(dataNascto))
FROM Funcionario
WHERE dataNascto LIKE '1990-%'

-- 4
select nome, DAY(dataNascto)
FROM Funcionario
WHERE POWER(DAY(dataNascto), 3) >= 1000

-- 5
SELECT ROUND(salario * 1.15, 0)
FROM Funcionario

-- 6
SELECT ABS(1500 - salario)
FROM Funcionario

-- 7
SELECT idFuncionario, SQRT(idFuncionario) AS RaizQuadrada
FROM Funcionario
WHERE dataNascto < '1989-04-01'

-- 8
SELECT nome, ROUND(salario * 0.65, 0)
FROM Funcionario

-- 9
SELECT LOG(idFuncionario)
FROM Funcionario

-- 10
SELECT SQRT(idFuncionario)
FROM Funcionario

-- 11
SELECT POWER(idFuncionario, 2)
FROM Funcionario

-- 12
SELECT ABS(idFuncionario - 10)
FROM Funcionario
ORDER BY nome ASC

SELECT *
FROM Funcionario