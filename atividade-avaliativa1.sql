/* A fun��o CONVERT � usada para converter as datas de um tipo espec�fico para outro.
Por exemplo, usando o par�metro 103 para converter o tipo 'ano-m�s-dia' para 'dia/m�s/ano' das datas de nascimento dos funcion�rios: */

SELECT dataNascto, CONVERT(varchar(10), dataNascto, 103) AS conversao_de_data
FROM Funcionario
ORDER by dataNascto ASC

/* A fun��o SQUARE � usada para calcular o quadrado de um n�mero.
Por exemplo, para calcular o quadrado do ID dos funcion�rios: */

SELECT idFuncionario, SQUARE(idFuncionario) AS quadrado
FROM Funcionario
ORDER by idFuncionario ASC

/* A fun��o REVERSE � usada para inverter uma string.
Por exemplo, para inverter os nomes dos funcion�rios: */

SELECT nome, REVERSE(nome) AS nome_invertido
FROM Funcionario
ORDER by nome ASC

/* A fun��o PERCENTILE_CONT � usada para calcular um valor de percentil espec�fico em um conjunto de dados.
Por exemplo, para calcular a mediana dos sal�rios dos funcion�rios: */

SELECT salario, PERCENTILE_CONT(0.5) WITHIN GROUP (ORDER BY salario) OVER () AS mediana
FROM Funcionario
ORDER by salario ASC