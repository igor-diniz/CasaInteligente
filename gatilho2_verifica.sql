-- faça select * from grupo;
-- para ver nova qtdDispositivosAssociados após executar .read gatilho2_verifica.sql

-- faça select * from AssistenteVirtual;
-- para ver nova qtdDispositivosAssociados após executar .read gatilho2_verifica.sql


--Inserts referentes à classe Grupo
INSERT INTO GrupoDispositivoBluetooth (idGrupo, idDispositivo) VALUES
(9, 10),
(9, 9),
(6, 5),
(8, 2),
(2, 7),
(5, 10);

INSERT INTO GrupoDispositivoWiFi (idGrupo, idDispositivo) VALUES
(10, 5),
(2, 3),
(10, 4);

INSERT INTO GrupoDispositivoInfravermelho (idGrupo, idDispositivo) VALUES
(7, 8),
(5, 5),
(9, 10),
(10, 5);




--Inserts referentes à classe AssistenteVirtual
INSERT INTO DispositivoBluetoothAcaoAssistente(idDispositivo, nomeAcao, idAssistente) VALUES 
(3, 'ligar luzes', 6),  
(10, 'ligar TV', 8), 
(10, 'aumentar volume', 8);

INSERT INTO DispositivoWiFiAcaoAssistente(idDispositivo, nomeAcao, idAssistente) VALUES 
(10, 'ligar som', 5), 
(10, 'aumentar volume', 5),
(4, 'ligar luzes', 4),
(7, 'ligar luzes', 10),
(4, 'desligar luzes', 4),
(7, 'desligar luzes', 10); 


INSERT INTO DispositivoInfravermelhoAcaoAssistente(idDispositivo, nomeAcao, idAssistente) VALUES 
(10, 'ligar ar-condicionado', 7), 
(10, 'desligar ar-condicionado', 7);