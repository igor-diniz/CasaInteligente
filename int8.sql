.mode columns
.header on
.nullvalue NULL

--Quais são as condições que permitem disparar uma ação de ligar ou desligar
-- dispositivos infravermelho por meio de um assistente virtual Alexa?

SELECT  condicao
FROM Gatilho
WHERE idGatilho IN (
SELECT  idGatilho
FROM GatilhoAcao
WHERE nomeAcao IN (
SELECT  nomeAcao
FROM DispositivoInfravermelhoAcaoAssistente DIAA, AssistenteVirtual A
WHERE (nomeAcao like '%ligar%' or nomeAcao like '%desligar%')
AND DIAA.idAssistente = A.idAssistente
AND A.nome = 'Alexa'));