--PASSO 1: Criar o banco

--CREATE DATABASE projeto_eventos

--USE projeto_eventos

--==========================================================

-- PASSO 2: Criar as tabelas
/*CREATE TABLE empresas
(
		id_empresa			INT PRIMARY KEY,
		empresa				VARCHAR(100),
		total_funcionarios	INT
);*/

--==========================================================

/*CREATE TABLE categorias
(
		id_categoria	INT PRIMARY KEY,
		categoria		VARCHAR(100),
		visao			VARCHAR(100)
);*/

--==========================================================

CREATE TABLE eventos
(
		data_evento				DATE,
		id_empresa				INT,
		tipo_evento				VARCHAR(100),
		pagamento				VARCHAR(50),
		total_participantes		INT,
		corbetura				VARCHAR(100),
		coordenador				VARCHAR(100),
		valor_faturado			DECIMAL(10,2),
		royalties				DECIMAL(10,2),
		desconto_contratante	DECIMAL(10,2),
		contratante				VARCHAR(100),
		id_categoria			INT,

		FOREIGN KEY	(id_empresa) REFERENCES		empresas(id_empresa),
		FOREIGN KEY	(id_categoria) REFERENCES	categorias(id_categoria),
);
