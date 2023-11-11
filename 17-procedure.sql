-- Criar Procedimento

CREATE PROCEDURE BuscaCliente -- cria um procedimento que recebe um parâmetro e mostra todos os cleintes cujo nome contenha o nome informado
	@nomeBusca VARCHAR(50)
AS
	SELECT CodCli, Nome
	FROM Clientes
	WHERE Nome LIKE '%' + @nomeBusca + '%'

CREATE PROC Insere_DetalhesPed -- cria um stored procedure que seja capaz de inserir um registro na tabela DetalhesPed
	@NumPed INT,
	@CodProd INT,
	@Preco Money,
	@Qtde SMALLINT,
	@Desconto FLOAT
AS
	INSERT INTO DetalhesPed
	VALUES (@NumPed, @CodProd, @Preco, @Qtde, @Desconto)

-- Alterar Procedimento

ALTER PROC Insere_DetalhesPed -- altera a stored procedure existente, exibindo uma mensagem caso não receba o número do pedido e o código do produto para inserir um registro na tabela DetalhesPed
	@NumPed INT,
	@CodProd INT,
	@Preco Money,
	@Qtde SMALLINT,
	@Desconto FLOAT
AS
	IF (@NumPed <> 0) AND (@CodProd <> 0)
		INSERT INTO DetalhesPed
		VALUES (@NumPed, @CodProd, @Preco, @Qtde, @Desconto)
	ELSE
		PRINT 'Valores Inválidos!';

-- Executar Procedimento

EXECUTE BuscaCliente 'ana'
EXEC Insere_DetalhesPed 0, 0, 0, 0, 0

-- Apagar Procedimento

DROP PROCEDURE Insere_DetalhesPed

--Exercícios

-- 1
CREATE PROC Busca_Func
	@codFun VARCHAR(50)
AS
	SELECT Nome, Sobrenome, Cargo
	FROM Funcionarios

EXEC Busca_Func '1'

-- 2
CREATE PROC Funcionarios_Cargo
	@cargo VARCHAR(50)
AS
	SELECT Nome, Sobrenome, Cargo
	FROM Funcionarios
	WHERE Cargo = @cargo

EXEC Funcionarios_Cargo 'Representante de Vendas'

-- 3
CREATE PROC Insere_Fornec
	@empresa VARCHAR(40),
	@contato VARCHAR(30),
	@cargo VARCHAR(30),
	@endereco VARCHAR(60),
	@cidade VARCHAR(15),
	@cep VARCHAR(10),
	@pais VARCHAR(15)
AS
	INSERT INTO Fornecedores
	VALUES (@empresa, @contato, @cargo, @endereco, @cidade, @cep, @pais)

EXEC Insere_Fornec 'Runtec', '(11) 98765-4321', 'Representante de Vendas', 'Av. Brasil, 419', 'Rio de Janeiro', '12345-678', 'Brasil'

-- 4
CREATE PROC Exclui_Produto
	@cod INT
AS
	DELETE FROM Produtos
	WHERE @cod = CodProd

EXEC Exclui_Produto 1
-- 5CREATE PROCEDURE Aumenta_Salario
    @CodFun INT = NULL,
    @Aumento DECIMAL(5, 2)
AS
	IF @CodFun IS NULL
		BEGIN
			UPDATE Funcionarios
			SET Salario = Salario * (1 + @Aumento / 100);
		END
	ELSE
		BEGIN
			UPDATE Funcionarios
			SET Salario = Salario * (1 + @Aumento / 100)
			WHERE CodFun = @CodFun
		END

EXEC Aumenta_Salario @CodFun = 1, @Aumento = 10
EXEC Aumenta_Salario @Aumento = 5