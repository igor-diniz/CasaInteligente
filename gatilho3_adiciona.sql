PRAGMA foreign_keys = ON;

DROP TRIGGER IF EXISTS MenorDe18;
CREATE Trigger MenorDe18
After Insert ON TipoUtilizador
FOR EACH ROW
WHEN EXISTS (SELECT COUNT(DISTINCT nif) FROM TipoUtilizador 
                WHERE nif <> New.nif 
                GROUP BY idAPlicacao 
                HAVING COUNT(DISTINCT nif) >= 2 
            ) 
BEGIN
    UPDATE TipoUtilizador
    SET New.principal = 0
    WHERE nif = New.nif;
END;

--AND (SELECT DATE('now') - dob FROM Utilizador
--              WHERE nif = New.nif) < 18 


