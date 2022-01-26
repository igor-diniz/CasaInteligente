PRAGMA foreign_keys = ON;

--Remove gatilhos referentes à classe Grupo
DROP TRIGGER IF EXISTS IncrementaQtdDispositivosBluetoothG;
DROP TRIGGER IF EXISTS IncrementaQtdDispositivosWiFiG;
DROP TRIGGER IF EXISTS IncrementaQtdDispositivosInfravermelhoG;


--Remove gatilhos referentes à classe AssistenteVirtual
DROP TRIGGER IF EXISTS IncrementaQtdDispositivosBluetoothA;
DROP TRIGGER IF EXISTS IncrementaQtdDispositivosWiFiA;
DROP TRIGGER IF EXISTS IncrementaQtdDispositivosInfravermelhoA;