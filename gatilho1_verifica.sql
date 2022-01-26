PRAGMA foreign_keys = ON;

SELECT * FROM DispositivoInfraComando;
SELECT * FROM Aplicacao;
SELECT * FROM AssistenteVirtual;
--INSERT DispositivoInfraComando
INSERT INTO DispositivoInfraComando (idDispositivo, idComando) VALUES 
(1, 5), 
(2, 1),  
(6, 3);
--Suposto dar erro em todos




INSERT INTO Aplicacao (idAplicacao, nome, versao, idioma) VALUES 
(11, 'Microsoft Cortana', '2.9.11.2037', 'Inglês');
--Não é suposto dar erro, é criado apenas para verificar o Assistente Virtual

INSERT INTO AssistenteVirtual (idAssistente, nome, idioma, qtdDispositivosAssociados, idCasa, idModelo, idAplicacao) VALUES 
(11, 'Cortana', 'Português', 8, 11, 2, 11);
--Suposto dar erro

SELECT * FROM DispositivoInfraComando;
SELECT * FROM Aplicacao;
SELECT * FROM AssistenteVirtual;
