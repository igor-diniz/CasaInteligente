.mode columns
.header on
.nullvalue NULL

--Qual a diferença entre o alcance máximo e mínimo dos dispositivos bluetooth 
--que estão conectados a assistentes virtuais de nome ‘Google Assistant’?

SELECT  MAX(alcance) - MIN(alcance) AS AmplitudeMaxAlcance
FROM EspecificacoesDispositivoBluetooth
WHERE (nome, idModelo) IN 
(SELECT DispositivoBluetooth.nome, DispositivoBluetooth.idModelo 
    FROM DispositivoBluetooth 
    JOIN AssistenteVirtual USING(idAssistente) 
    WHERE AssistenteVirtual.nome = "Google Assistant"); 
