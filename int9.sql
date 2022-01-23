.mode columns
.header on
.nullvalue NULL

--Qual é a soma das áreas totais distintas das casas e a quantidade de casas que foram contabilizadas, 
--cujos utilizadores não principais tenham idade superior a 20 anos e controlam aplicações em português?

SELECT  SUM(DISTINCT areaTotal)   AS SomaDasAreas, 
        COUNT(DISTINCT areaTotal) AS Qtd
FROM Casa, CasaUtilizador
WHERE Casa.idCasa = CasaUtilizador.idCasa
AND nif IN 
    ( SELECT nif FROM Utilizador JOIN tipoutilizador USING  (nif) 
        JOIN Aplicacao USING  (idAplicacao) 
        WHERE principal = 0 AND date('now') - dob > 20
        AND idioma = 'Português');