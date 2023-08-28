SET DATEFORMAT YMD

CREATE DATABASE RecursosHumanos
GO

USE RecursosHumanos
GO

CREATE TABLE Funcionario (
	idFuncionario int not null,
	nome varchar(50) null,
	endereco varchar(100) null,
	cidade varchar(50) null,
	estado char(2) null,
	email varchar(50) null unique,
	dataNascto date null,
	primary key(idFuncionario)
)
GO

alter table Funcionario
add salario decimal(7,2) null,
cargos char(2) null

alter table Funcionario
drop column cargos

alter table Funcionario
add cargo char(2) null,
ativo bit
GO

create index FuncionarioNome
on Funcionario (nome)

create index FuncionarioEstado
on Funcionario (estado desc)

create index FuncionarioEstadoCidade
on Funcionario (estado desc, cidade asc)
GO

INSERT INTO Funcionario
(idFuncionario, nome, endereco, cidade, estado, email, dataNascto)
VALUES
(1, 'José da Silva', 'Av. São Paulo, 34', 'Itu', 'SP', 'zesilva@yahoo.com.br', '1991-02-24')

INSERT INTO Funcionario
VALUES
(2, 'João de Oliveira', 'Rua da Saúde, 138', 'Jundiaí', 'SP', 'jojo@hotmail.com', '1988-01-11',750,'TI',1)

INSERT INTO Funcionario
VALUES
(3, 'Ana Pimenta', 'Rua da Saúde, 11', 'Jundiaí', 'SP', 'pimentinha@hotmail.com', '1987-01-01',750,'TI',0),
(4, 'Mário Lopes', 'Rua Angélica, 143', 'Jundiaí', 'SP', 'mlopes@ hotmail.com', '1985-04-10',750,'TI',0)

UPDATE Funcionario SET
cidade = 'Valinhos'
WHERE cidade = 'Itu'GODELETE FROM Funcionario
WHERE idFuncionario = 2
GOINSERT INTO Funcionario
(idFuncionario, nome, endereco, cidade, estado, email, dataNascto)
VALUES
(5, 'Carlos Dias', 'Av. Lapa, 121', 'Itu', 'SP', 'carlao@gmail.com', '1990-03-31'),
(6, 'Ana Maria da Cunha', 'Av. São Paulo, 388', 'Itu', 'SP', 'aninhacunha@gmail.com', '1988-04-12'),
(7, 'Cláudia Regina Martins', 'Rua Holanda, 89', 'Campinas', 'SP', 'cregina@gmail.com', '1988-12-04'),
(8, 'Marcela Tatho', 'Rua Bélgica, 43', 'Campinas', 'SP', 'marctatho@hotmail.com', '1987-11-09'),
(9, 'Jorge Luís Rodrigues', 'Av. da Saudade, 1989', 'São Paulo', 'SP', 'jorgeluis@yahoo.com.br', '1990-05-05'),
(10, 'Ana Paula Camargo', 'Rua Costa e Silva, 33', 'Jundiaí', 'SP', 'apcamargo@gmail.com', '1991-06-30'),
(11, 'Ivo Cunha', 'Av. Raio de Luz, 100', 'Campinas', 'SP', 'ivo@bol.com.br', '1987-04-11'),
(12, 'Carlos Luís de Souza', 'Rua Nicolau Coelho, 22', 'São Paulo', 'SP', 'cls@bol.com.br', '1988-04-30')
GOUPDATE FuncionarioSET cargo = 'AI', salario = 1100 -- auxiliar de informáticaWHERE cidade = 'Valinhos'UPDATE FuncionarioSET cargo = 'PC', salario = 1700 -- programador de computadorWHERE cidade = 'Campinas'UPDATE FuncionarioSET cargo = 'TI', salario = 750 -- técnico de informáticaWHERE cidade = 'Jundiaí'GODELETE FROM Funcionario
WHERE idFuncionario = 5
GO

SELECT *
FROM Funcionario