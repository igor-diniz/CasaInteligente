.mode columns
.header on
.nullvalue NULL

-- Quantos utilizadores principais que não moram nem no Brasil, nem em Portugal, controlam uma aplicação que está em português?
SELECT  COUNT(DISTINCT nif) as numUtilizadores
FROM
(
    ((CasaUtilizador JOIN Casa USING(idCasa))
	JOIN Morada USING (endereco, numero))
	JOIN CodigoPostal USING (codigoPostal)
)
WHERE nomePais <> "Brasil"
AND nomePais <> "Portugal"
AND nif IN 
( SELECT Utilizador.nif 
    FROM TipoUtilizador, Utilizador, Aplicacao, Idioma 
    WHERE TipoUtilizador.nif = Utilizador.nif 
    AND TipoUtilizador.idAplicacao = Aplicacao.idAplicacao 
    AND Aplicacao.idioma = "Português" 
    AND principal = 1); 
