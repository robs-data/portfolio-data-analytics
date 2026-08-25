--ALTER TABLE events
--ALTER COLUMN valor_faturado FLOAT;

 

CREATE VIEW vw_receita_empresa AS
SELECT
    emp.empresa,
    SUM(TRY_CAST(e.valor_faturado AS DECIMAL(18,2))) AS receita
FROM events e
JOIN empresas emp 
    ON e.id_empresa = emp.id_empresa
GROUP BY emp.empresa;

--====================================================================--

CREATE VIEW vw_receita_categoria AS
SELECT
    c.categoria,
    SUM(TRY_CAST(e.valor_faturado AS DECIMAL(18,2))) AS receita
FROM events e
JOIN categorias c
    ON e.categoria = c.id_categoria
GROUP BY c.categoria;

--=====================================================================--

CREATE VIEW vw_eventos_mes AS
SELECT
    YEAR  (data_evento) as ano,
    MONTH   (data_evento) as mes,
    COUNT (*) total_eventos,
    SUM(TRY_CAST(valor_faturado AS DECIMAL(18,2))) AS receita
FROM events
GROUP BY   
    YEAR (data_evento),
    month (data_evento);

  --=====================================================================--

CREATE VIEW vw_participantes_categoria AS
SELECT
    c.categoria,
    AVG(e.total_participantes) AS media_participantes
FROM events e
JOIN categorias c
    ON e.categoria = c.id_categoria
GROUP BY c.categoria;

--===================================================================--

CREATE VIEW vw_fato_eventos AS
SELECT
    e.*,
    emp.empresa,
    c.categoria AS nome_categoria,
    TRY_CAST(e.valor_faturado AS DECIMAL(18,2)) AS valor_faturado_tratado
FROM events e
JOIN empresas emp ON e.id_empresa = emp.id_empresa
JOIN categorias c ON e.categoria = c.id_categoria;

--=======================================================================--

CREATE VIEW vw_dim_empresa AS
SELECT
    id_empresa,
    empresa,
    total_funcionarios
FROM empresas;

--==========================================================================--

CREATE VIEW vw_dim_categoria AS
SELECT
    id_categoria,
    categoria,
    visao
FROM categorias;

--=========================================================================--

CREATE VIEW vw_dim_tempo AS
SELECT DISTINCT
    data_evento,
    YEAR(data_evento) AS ano,
    MONTH(data_evento) AS mes,
    DATENAME(MONTH, data_evento) AS nome_mes,
    DATEPART(QUARTER, data_evento) AS trimestre
FROM events;

SELECT sum(valor_faturado_tratado)
FROM vw_fato_eventos