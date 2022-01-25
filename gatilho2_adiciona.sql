-- faça select * from grupo;
-- para ver qtdDispositivosAssociados antes de executar .read gatilho2_verifica.sql

-- faça select * from AssistenteVirtual;
-- para ver qtdDispositivosAssociados antes de executar .read gatilho2_verifica.sql

--Incrementa quantidade de dispositivos na classe Grupo
CREATE Trigger IncrementaQtdDispositivosBluetoothG
After Insert ON GrupoDispositivoBluetooth 
For Each ROW
BEGIN
UPDATE Grupo
SET qtdDispositivosAssociados = qtdDispositivosAssociados + 1
WHERE idGrupo = New.idGrupo; 
END;

CREATE Trigger IncrementaQtdDispositivosWiFiG
After Insert ON GrupoDispositivoWiFi
For Each ROW
BEGIN
UPDATE Grupo
SET qtdDispositivosAssociados = qtdDispositivosAssociados + 1
WHERE idGrupo = New.idGrupo; 
END;

CREATE Trigger IncrementaQtdDispositivosInfravermelhoG
After Insert ON GrupoDispositivoInfravermelho
For Each ROW
BEGIN
UPDATE Grupo
SET qtdDispositivosAssociados = qtdDispositivosAssociados + 1
WHERE idGrupo = New.idGrupo; 
END;




--Incrementa quantidade de dispositivos na classe AssistenteVirtual
CREATE Trigger IncrementaQtdDispositivosBluetoothA
After Insert ON DispositivoBluetoothAcaoAssistente
For Each ROW
BEGIN
UPDATE AssistenteVirtual
SET qtdDispositivosAssociados = qtdDispositivosAssociados + 1
WHERE idAssistente = New.idAssistente; 
END;

CREATE Trigger IncrementaQtdDispositivosWiFiA
After Insert ON DispositivoWiFiAcaoAssistente
For Each ROW
BEGIN
UPDATE AssistenteVirtual
SET qtdDispositivosAssociados = qtdDispositivosAssociados + 1
WHERE idAssistente = New.idAssistente; 
END;

CREATE Trigger IncrementaQtdDispositivosInfravermelhoA
After Insert ON DispositivoInfravermelhoAcaoAssistente
For Each ROW
BEGIN
UPDATE AssistenteVirtual
SET qtdDispositivosAssociados = qtdDispositivosAssociados + 1
WHERE idAssistente = New.idAssistente; 
END;

