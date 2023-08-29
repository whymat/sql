-- Fun��es	String

SELECT ASCII('A') -- exibe a posi��o do caractere 'A' na tabela ASCII

SELECT ASCII('a') -- exibe a posi��o do caractere 'a' na tabela ASCII

SELECT CHAR(90) -- exibe o caractere que est� na posi��o 90 da tabela ASCII

SELECT LEN('amor') -- exibe o tamanho da palavra 'amor'

SELECT LEFT('pr�dio', 3) -- exibe os 3 primeiros caracteres a partir da esquerda

SELECT RIGHT('revista', 5) -- exibe os 5 primeiros caracteres a partir da direita (ou �ltimos)

SELECT LOWER('CARRO') -- exibe os caracteres em min�sculo

SELECT UPPER('gato') -- exibe os caracteres em mai�sculo

SELECT SUBSTRING('panela', 2, 4) -- exibe 4 caracteres a partir da posi��o 2

SELECT REPLACE('guarda_chuva', '_', '-') -- substitui algum caractere por outro

SELECT LTRIM(' faca') -- retira o espa�o a esquerda

SELECT RTRIM('uva ') -- retira o espa�o a direita

-- Exerc�cios

-- 1
SELECT UPPER(nome)
FROM Funcionario

-- 2
SELECT DISTINCT LEN(MONTH(dataNascto))
FROM Funcionario

-- 3
SELECT REPLACE(nome,' ','-')
FROM Funcionario

-- 4
SELECT LEFT(nome, 3), RIGHT(nome, 3)
FROM Funcionario

-- 5
SELECT SQRT(LEN(nome))
FROM Funcionario

-- 6
SELECT DISTINCT SUBSTRING(cidade, 3, 5)
FROM Funcionario

-- 7
SELECT REPLACE(nome,' ','')
FROM Funcionario

-- 8
SELECT ASCII(idFuncionario)
FROM Funcionario
WHERE cidade = 'Campinas'

-- 9
SELECT ASCII(nome)
FROM Funcionario
WHERE DAY(dataNascto) > 20

-- 10
SELECT RTRIM(LEFT(cidade, 4))
FROM Funcionario

-- 11
SELECT LTRIM(RIGHT(cidade, 6))
FROM Funcionario

-- 12
SELECT DISTINCT UPPER(cidade)
FROM Funcionario

SELECT *
FROM Funcionario