PRAGMA foreign_keys = ON;

SELECT * FROM Utilizador;
SELECT * FROM TipoUtilizador;


INSERT INTO Utilizador (nif, nome, dob, nacionalidade) VALUES 
(85866500, 'Evandro Farias', '1966-09-26', 'Brasil'),
(03617420, 'Paulo Cesar', '2006-09-30', 'Estados Unidos'),
(16847584, 'Satoshi Nakamoto', '2008-09-30', 'China');

INSERT INTO TipoUtilizador(nif, idAplicacao, principal) VALUES 
(85866500, 5, 1),
(03617420, 4, 1),
(16847584, 6, 1);

SELECT * FROM Utilizador;
SELECT * FROM TipoUtilizador;



