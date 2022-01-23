--Quais são os nomes e modelos e marcas dos dispositivos wifi que não têm uma aplicação associada a eles na base de dados?
 
SELECT  idDispositivo
       , Dispositivo.nome as Dispositivo
       , Modelo.nome as Modelo
       , (SELECT Marca.nome FROM Marca WHERE Marca.idMarca = Modelo.idMarca) as Marca
FROM (DispositivoWiFi
LEFT OUTER JOIN DispositivoWiFiAplicacao USING(idDispositivo)) Dispositivo, Modelo
WHERE idAplicacao IS NULL
AND Dispositivo.idModelo = Modelo.idModelo;