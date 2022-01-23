.mode columns
.header on
.nullvalue NULL

-- Qual o idioma mais utilizado nas assistentes virtuais que possuem um número de dispositivos associados acima da média
-- arredondada para 0 casas decimais?
SELECT  idioma
FROM
(
	SELECT  idioma, MAX(freq)
	FROM
	(
		SELECT  idioma, COUNT(*) AS freq
		FROM AssistenteVirtual
		GROUP BY  idioma
		HAVING qtdDispositivosAssociados > ROUND(AVG(qtdDispositivosAssociados),0)
	)
);