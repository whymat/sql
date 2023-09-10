/* A função CONVERT é usada para converter as datas de um tipo específico para outro.
Por exemplo, usando o parâmetro 103 para converter o tipo 'ano-mês-dia' para 'dia/mês/ano' das datas de nascimento dos funcionários: */

SELECT dataNascto, CONVERT(varchar(10), dataNascto, 103) AS conversao_de_data
FROM Funcionario
ORDER by dataNascto ASC

/* A função SQUARE é usada para calcular o quadrado de um número.
Por exemplo, para calcular o quadrado do ID dos funcionários: */

SELECT idFuncionario, SQUARE(idFuncionario) AS quadrado
FROM Funcionario
ORDER by idFuncionario ASC

/* A função REVERSE é usada para inverter uma string.
Por exemplo, para inverter os nomes dos funcionários: */

SELECT nome, REVERSE(nome) AS nome_invertido
FROM Funcionario
ORDER by nome ASC

/* A função PERCENTILE_CONT é usada para calcular um valor de percentil específico em um conjunto de dados.
Por exemplo, para calcular a mediana dos salários dos funcionários: */

SELECT salario, PERCENTILE_CONT(0.5) WITHIN GROUP (ORDER BY salario) OVER () AS mediana
FROM Funcionario
ORDER by salario ASC