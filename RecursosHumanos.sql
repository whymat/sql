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
(1, 'Jos� da Silva', 'Av. S�o Paulo, 34', 'Itu', 'SP', 'zesilva@yahoo.com.br', '1991-02-24')

INSERT INTO Funcionario
VALUES
(2, 'Jo�o de Oliveira', 'Rua da Sa�de, 138', 'Jundia�', 'SP', 'jojo@hotmail.com', '1988-01-11',750,'TI',1)

INSERT INTO Funcionario
VALUES
(3, 'Ana Pimenta', 'Rua da Sa�de, 11', 'Jundia�', 'SP', 'pimentinha@hotmail.com', '1987-01-01',750,'TI',0),
(4, 'M�rio Lopes', 'Rua Ang�lica, 143', 'Jundia�', 'SP', 'mlopes@ hotmail.com', '1985-04-10',750,'TI',0)

UPDATE Funcionario SET
cidade = 'Valinhos'
WHERE cidade = 'Itu'GODELETE FROM Funcionario
WHERE idFuncionario = 2
GOINSERT INTO Funcionario
(idFuncionario, nome, endereco, cidade, estado, email, dataNascto)
VALUES
(5, 'Carlos Dias', 'Av. Lapa, 121', 'Itu', 'SP', 'carlao@gmail.com', '1990-03-31'),
(6, 'Ana Maria da Cunha', 'Av. S�o Paulo, 388', 'Itu', 'SP', 'aninhacunha@gmail.com', '1988-04-12'),
(7, 'Cl�udia Regina Martins', 'Rua Holanda, 89', 'Campinas', 'SP', 'cregina@gmail.com', '1988-12-04'),
(8, 'Marcela Tatho', 'Rua B�lgica, 43', 'Campinas', 'SP', 'marctatho@hotmail.com', '1987-11-09'),
(9, 'Jorge Lu�s Rodrigues', 'Av. da Saudade, 1989', 'S�o Paulo', 'SP', 'jorgeluis@yahoo.com.br', '1990-05-05'),
(10, 'Ana Paula Camargo', 'Rua Costa e Silva, 33', 'Jundia�', 'SP', 'apcamargo@gmail.com', '1991-06-30'),
(11, 'Ivo Cunha', 'Av. Raio de Luz, 100', 'Campinas', 'SP', 'ivo@bol.com.br', '1987-04-11'),
(12, 'Carlos Lu�s de Souza', 'Rua Nicolau Coelho, 22', 'S�o Paulo', 'SP', 'cls@bol.com.br', '1988-04-30')
GOUPDATE FuncionarioSET cargo = 'AI', salario = 1100 -- auxiliar de inform�ticaWHERE cidade = 'Valinhos'UPDATE FuncionarioSET cargo = 'PC', salario = 1700 -- programador de computadorWHERE cidade = 'Campinas'UPDATE FuncionarioSET cargo = 'TI', salario = 750 -- t�cnico de inform�ticaWHERE cidade = 'Jundia�'GODELETE FROM Funcionario
WHERE idFuncionario = 5
GO

SELECT *
FROM Funcionario