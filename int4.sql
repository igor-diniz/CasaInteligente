.mode columns
.header on
.nullvalue NULL

-- 3.	Qual o nome, modelo, alcance e velocidade máxima 
--dos dispositivos bluetooth e dos dispositivos wifi da base de dados ordenados por ordem descendente de velocidade máxima?
SELECT nome, nomeModelo, alcance, velocidadeMax 
FROM EspecificacoesDispositivoWiFi D1
JOIN (SELECT idModelo, nome AS nomeModelo from Modelo) USING(idModelo)
WHERE alcance IS NOT NULL AND velocidadeMax IS NOT NULL
UNION
SELECT nome, nomeModelo, alcance, velocidadeMax 
FROM EspecificacoesDispositivoBluetooth D2 
JOIN (SELECT idModelo, nome AS nomeModelo from Modelo) USING(idModelo)
WHERE alcance IS NOT NULL AND velocidadeMax IS NOT NULL
ORDER BY velocidadeMax DESC;