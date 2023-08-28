-- Operadores Aritm�ticos

SELECT 1 + 2
SELECT 1 + 2 AS UmMaisDois -- ou SELECT 1 + 2 UmMaisDois
SELECT 1 + 2 * 3
SELECT (1 + 2) * 3

SELECT salario + 10 FROM Funcionario
SELECT salario * 1.10 FROM Funcionario -- acrescenta 10% 
SELECT salario * 0.90 FROM Funcionario -- desconta 10%

-- Operadores Relacionais

SELECT * FROM Funcionario WHERE salario > 1100 -- maior que
SELECT * FROM Funcionario WHERE salario < 110 -- menor que
SELECT * FROM Funcionario WHERE estado = 'SP' -- igual a
SELECT * FROM Funcionario WHERE cidade <> 'Jundia�' -- diferente de
SELECT * FROM Funcionario WHERE salario >= 1100 -- maior ou igual que
SELECT * FROM Funcionario WHERE salario <= 1100 -- menor ou igual que

-- Operadores L�gicos

SELECT * FROM Funcionario WHERE cidade = 'Campinas' AND cargo = 'PC' -- E, operador de conjun��o
SELECT * FROM Funcionario WHERE cidade = 'S�o Paulo' OR cargo = 'TI' -- OU, operador de disjun��o
SELECT * FROM Funcionario WHERE NOT estado = 'SP' -- N�O, operador de nega��o

-- Operadores Auxiliares

SELECT * FROM Funcionario WHERE cargo IS NULL -- verifica se o campo "cargo" � vazio

SELECT * FROM Funcionario WHERE salario BETWEEN 1000 AND 2000 -- verifica os sal�rios entre 1000 e 2000
SELECT * FROM Funcionario WHERE salario >= 1000 AND salario <= 2000

SELECT * FROM Funcionario WHERE cargo IN ('PC', 'TI') -- verifica se na coluna "cargo" existe "PC" e "TI"
SELECT * FROM Funcionario WHERE cargo NOT IN ('PC', 'TI') -- verifica na coluga "cargo" os itens que N�O s�o "PC" e "TI"

SELECT nome FROM Funcionario WHERE nome LIKE 'CARLOS%' -- busca na tabela os nomes que come�am em "Carlos"
SELECT nome FROM Funcionario WHERE nome LIKE '%CUNHA' -- busca na tabela os nomes que terminam em "Cunha"
SELECT nome FROM Funcionario WHERE nome NOT LIKE '%de%' -- busca na tabela os nomes que N�O t�m "de"
SELECT nome FROM Funcionario WHERE nome LIKE '_o%' -- busca na tabela os funcion�rios que possuem a letra "O" na segunda posi��o
SELECT nome FROM Funcionario WHERE nome = 'Carlos%' -- busca na tabela os funcion�rios que se chamam Carlos%

-- Exerc�cios

--1
SELECT nome, salario * 1.30 AS acr�scimo
FROM Funcionario

-- 2
SELECT nome, salario, salario * 0.80 AS desconto
FROM Funcionario
WHERE cidade = 'Campinas'

-- 3
SELECT nome, salario
FROM Funcionario
WHERE salario > 1500

-- 4
SELECT nome, cidade
FROM Funcionario
WHERE cidade <> 'Valinhos'

-- 5
SELECT idFuncionario, cidade
FROM Funcionario
WHERE cidade = 'Valinhos' OR cidade = 'Campinas'

-- 6
SELECT idFuncionario, cargo, salario
FROM Funcionario
WHERE cidade <> 'S�o Paulo' AND salario >= 1000

-- 7
SELECT nome
FROM Funcionario
WHERE cargo IS NULL

-- 8
SELECT nome, salario
FROM Funcionario
WHERE salario BETWEEN 500 AND 1500

-- 9
SELECT nome, email
FROM Funcionario
WHERE email LIKE '%hotmail%'

-- 10
SELECT nome, email
FROM Funcionario
WHERE email LIKE '%.br'
ORDER BY nome

-- 11
SELECT nome, email
FROM Funcionario
WHERE email NOT LIKE '%.com'

-- 12
SELECT nome, email
FROM Funcionario
WHERE nome LIKE '__r%'

SELECT *
FROM Funcionario