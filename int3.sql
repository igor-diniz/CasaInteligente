.mode columns
.header on
.nullvalue NULL

-- Quais são os 2 maiores números de utilizadores, por nacionalidade e por idioma das aplicações que controlam? 
--Em caso de empate deve ser selecionado o tuplo cuja nacionalidade seja a menor em ordem alfabética

SELECT  COUNT(DISTINCT Utilizador.nif) AS numUtilizadores
       ,idioma                         AS idiomaAplicacao
       ,nacionalidade
FROM TipoUtilizador, Utilizador, Aplicacao
WHERE TipoUtilizador.nif = Utilizador.nif
AND TipoUtilizador.idAplicacao = Aplicacao.idAplicacao
GROUP BY  nacionalidade
         ,idioma
ORDER BY numUtilizadores DESC
         ,nacionalidade ASC
LIMIT 2;
