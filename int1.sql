.mode columns
.header on
.nullvalue NULL

-- Quais são os nomes dos modelos de dispositivos que são ou da marca Apple, ou da Microsoft ou da Amazon?
SELECT DISTINCT Modelo.nome AS Modelo, Marca.nome AS Marca
FROM Modelo JOIN Marca USING(idMarca)
WHERE Marca.nome = "Apple" OR Marca.nome = "Microsoft" OR Marca.nome = "Amazon";