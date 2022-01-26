PRAGMA foreign_keys = ON;

--Incrementa quantidade de dispositivos na classe Grupo
DROP TRIGGER IF EXISTS IncrementaQtdDispositivosBluetoothG;
CREATE Trigger IncrementaQtdDispositivosBluetoothG
After Insert ON GrupoDispositivoBluetooth 
For Each ROW
BEGIN
UPDATE Grupo
SET qtdDispositivosAssociados = qtdDispositivosAssociados + 1
WHERE idGrupo = New.idGrupo; 
END;

DROP TRIGGER IF EXISTS IncrementaQtdDispositivosWiFiG;
CREATE Trigger IncrementaQtdDispositivosWiFiG
After Insert ON GrupoDispositivoWiFi
For Each ROW
BEGIN
UPDATE Grupo
SET qtdDispositivosAssociados = qtdDispositivosAssociados + 1
WHERE idGrupo = New.idGrupo; 
END;

DROP TRIGGER IF EXISTS IncrementaQtdDispositivosInfravermelhoG;
CREATE Trigger IncrementaQtdDispositivosInfravermelhoG
After Insert ON GrupoDispositivoInfravermelho
For Each ROW
BEGIN
UPDATE Grupo
SET qtdDispositivosAssociados = qtdDispositivosAssociados + 1
WHERE idGrupo = New.idGrupo; 
END;




--Incrementa quantidade de dispositivos na classe AssistenteVirtual
DROP TRIGGER IF EXISTS IncrementaQtdDispositivosBluetoothA;
CREATE Trigger IncrementaQtdDispositivosBluetoothA
After Insert ON DispositivoBluetoothAcaoAssistente
For Each ROW
BEGIN
UPDATE AssistenteVirtual
SET qtdDispositivosAssociados = qtdDispositivosAssociados + 1
WHERE idAssistente = New.idAssistente; 
END;

DROP TRIGGER IF EXISTS IncrementaQtdDispositivosWiFiA;
CREATE Trigger IncrementaQtdDispositivosWiFiA
After Insert ON DispositivoWiFiAcaoAssistente
For Each ROW
BEGIN
UPDATE AssistenteVirtual
SET qtdDispositivosAssociados = qtdDispositivosAssociados + 1
WHERE idAssistente = New.idAssistente; 
END;

DROP TRIGGER IF EXISTS IncrementaQtdDispositivosInfravermelhoA;
CREATE Trigger IncrementaQtdDispositivosInfravermelhoA
After Insert ON DispositivoInfravermelhoAcaoAssistente
For Each ROW
BEGIN
UPDATE AssistenteVirtual
SET qtdDispositivosAssociados = qtdDispositivosAssociados + 1
WHERE idAssistente = New.idAssistente; 
END;

