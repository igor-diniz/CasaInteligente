.mode columns
.header on
.nullvalue NULL

--Qual o nome dos dispositivos que pertencem a um grupo que contenha 'casa' no nome e cuja orientação solar da casa a qual pertencem seja Leste?

SELECT DISTINCT D.nome
FROM DispositivoInfravermelho D, Grupo, Casa, GrupoDispositivoInfravermelho GDI
WHERE Grupo.idGrupo = GDI.idGrupo
AND D.idDispositivo = GDI.idDispositivo
AND Grupo.nome LIKE '%casa%'
AND Grupo.idCasa = Casa.idCasa
AND Casa.orientacaoSolar = 'L'
UNION
SELECT DISTINCT D.nome
FROM DispositivoBluetooth D, Grupo, Casa, GrupoDispositivoBluetooth GDB
WHERE Grupo.idGrupo = GDB.idGrupo
AND D.idDispositivo = GDB.idDispositivo
AND Grupo.nome LIKE '%casa%'
AND Grupo.idCasa = Casa.idCasa
AND Casa.orientacaoSolar = 'L'
UNION
SELECT DISTINCT D.nome
FROM DispositivoWiFi D, Grupo, Casa, GrupoDispositivoWiFi GDW
WHERE Grupo.idGrupo = GDW.idGrupo
AND D.idDispositivo = GDW.idDispositivo
AND Grupo.nome LIKE '%casa%'
AND Grupo.idCasa = Casa.idCasa
AND Casa.orientacaoSolar = 'L';
