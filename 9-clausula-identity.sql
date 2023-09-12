-- IDENTITY (<in�cio>, <incremento>)

CREATE TABLE Cargo (
	idCargo INT IDENTITY PRIMARY KEY, -- auto-incremento, n�o � necess�rio ficar adicionando manualmente os ID
	sigla CHAR(2) NOT NULL,
	nome VARCHAR(30) NULL UNIQUE
)