.mode columns
.header on
.nullvalue NULL

--Qual o nome do modelo dos comandos infravermelho, cuja aplicação a qual estão associados tenha versão maior que 2.3?
SELECT  DISTINCT Modelo.nome, versao AS versaoAplicacao
FROM Modelo, ComandoInfravermelho, Aplicacao
WHERE ComandoInfravermelho.idAplicacao = Aplicacao.idAplicacao
AND Modelo.idModelo = ComandoInfravermelho.idModelo
AND versao > '2.3'; 


