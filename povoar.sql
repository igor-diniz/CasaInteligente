PRAGMA foreign_keys = ON;
.mode columns
.header on

--Insert Pais
INSERT INTO Pais (nome) VALUES 
('Portugal'), 
('Brasil'), 
('Estados Unidos'), 
('França'), 
('Alemanha'), 
('Argentina'), 
('Bolivia'), 
('Espanha'), 
('Angola'), 
('China');

--INSERT Distrito
INSERT INTO Distrito (idDistrito, nome, nomePais) VALUES 
(1, 'Porto', 'Portugal'), 
(2, 'Braga', 'Portugal'), 
(3, 'Ceará', 'Brasil'), 
(4, 'Texas', 'Estados Unidos'), 
(5, 'Ilha de França', 'França'), 
(6, 'Aveiro', 'Portugal'), 
(7, 'Leiria', 'Portugal'), 
(8, 'Lisboa', 'Portugal'), 
(9, 'São Paulo', 'Brasil'), 
(10, 'Rio de Janeiro', 'Brasil');

--INSERT Concelho
INSERT INTO Concelho (idConcelho, nome, idDistrito) VALUES 
(1, 'Trofa', 1), 
(2, 'Guimarães', 2), 
(3, 'Fortaleza', 3), 
(4, 'Dallas', 4), 
(5, 'Paris', 5), 
(6, 'Aveiro', 6), 
(7, 'Leiria', 7), 
(8, 'Lisboa', 8), 
(9, 'São Paulo', 9), 
(10, 'Rio de Janeiro', 10);

--INSERT Freguesia
INSERT INTO Freguesia (idFreguesia, nome, idConcelho) VALUES 
(1, 'Paranhos', 1), 
(2, 'Conde', 2), 
(3, 'Edson Queiroz', 3), 
(4, 'Preston Hollow', 4), 
(5, 'Les Halles', 5), 
(6, 'Oliveirinha', 6), 
(7, 'Amor', 7), 
(8, 'Ajuda', 8), 
(9, 'Santana', 9), 
(10, 'Copacabana', 10);

--INSERT CodigoPostal
INSERT INTO CodigoPostal(codigoPostal, idFreguesia) VALUES 
('4200083', 1), 
('4200089', 2), 
('4815549', 3), 
('60811760', 4), 
('07730', 5), 
('02571BO', 6), 
('97225AN', 7), 
('30390', 8), 
('40028922', 9), 
('123789', 10), 
('22775040', 10);

--INSERT Morada
INSERT INTO Morada (endereco, numero, codigoPostal) VALUES 
('rua da areosa', 155, '4200083'), 
('rua da areosa', 130, '4200089'), 
('rua arquitecto lobão vital', 25, '4815549'), 
('rua hill de moraes', 166, '60811760'), 
('baker street', 122, '07730'), 
('rua maria dias hog', 15, '97225AN'), 
('avenida cruzeiro do sul', 130, '02571BO'), 
('rua inventadus agoris', 25, '97225AN'), 
('avenida capitão nascimento', 254, '30390'), 
('rua ian jumas', 169, '40028922'), 
('rua da base de dados', 185, '123789'), 
('avenida abelardo bueno', 2510, '22775040');

--INSERT Casa
INSERT INTO Casa (idCasa, endereco, numero, orientacaoSolar, qtdComodos, areaTotal) VALUES 
(1, 'rua da areosa', 155, 'N', 3, 20), 
(2, 'rua da areosa', 130, 'NE', 2, 50), 
(3, 'rua arquitecto lobão vital', 25, 'L', 3, 100), 
(4, 'rua hill de moraes', 166, 'O', 4, 70), 
(5, 'rua maria dias hog', 15, 'N', 3, 35), 
(6, 'avenida cruzeiro do sul', 130, 'NE', 2, 62), 
(7, 'rua inventadus agoris', 25, 'L', 3, 80), 
(8, 'avenida capitão nascimento', 254, 'O', 4, 25), 
(9, 'rua ian jumas', 169, 'O', 4, 30), 
(10, 'rua da base de dados', 185, 'O', 4, 30), 
(11, 'avenida abelardo bueno', 2510, 'SE', 5, 20);

--INSERT Utilizador
INSERT INTO Utilizador (nif, nome, dob, nacionalidade) VALUES 
(902854879, 'Eduardo Duarte', '2001-07-25', 'Brasil'), 
(782459137, 'Igor Diniz', '2000-01-26', 'Brasil'), 
(744584663, 'Ian Gomes', '2001-12-29', 'Brasil'), 
(643375570, 'Pedro Sousa', '1990-05-05', 'Portugal'), 
(908361726, 'Michael Jackson', '1958-08-29', 'Estados Unidos'), 
(744584662, 'Yudi Playstation', '1990-10-22', 'Brasil'), 
(746544243, 'Rosabel Whiskin', '1967-07-30', 'China'), 
(852937412, 'Jena Schlagman', '2014-09-11', 'Bolivia'), 
(965485234, 'Finn Vasler', '1973-04-20', 'Angola'), 
(123987456, 'Marty Bechley', '1996-03-28', 'Bolivia');

--INSERT CasaUtilizador
INSERT INTO CasaUtilizador (idCasa, nif) VALUES 
(1, 902854879), 
(1, 782459137), 
(2, 744584663), 
(2, 908361726), 
(3, 643375570), 
(4, 643375570), 
(5, 746544243), 
(7, 852937412), 
(8, 965485234), 
(10, 123987456);

--INSERT Idioma
INSERT INTO Idioma (nome) VALUES 
('Português'), 
('Inglês'), 
('Espanhol'), 
('Françês'), 
('Mandarim'), 
('Hindi'), 
('Mongolês'), 
('Polonês'), 
('Italiano'), 
('Alemão'), 
('Guaraní'), 
('Russo');

--INSERT Aplicacao
INSERT INTO Aplicacao (idAplicacao, nome, versao, idioma) VALUES 
(1, 'Amazon Alexa', '2.2.453031.0', 'Português'), 
(2, 'Amazon Alexa', '2.2.448943.0', 'Inglês'), 
(3, 'Google Home', '2.46.105', 'Espanhol'), 
(4, 'Google Home', '2.46.106', 'Inglês'), 
(5, 'Google Home', '2.46.107', 'Português'), 
(6, 'Apple Siri', '8.3', 'Mandarim'), 
(7, 'Microsoft Cortana', '2.9.11.2037', 'Russo'), 
(8, 'Tuya Smart', '3.33.1', 'Português'), 
(9, 'Amazon Alexa', '2.031.0', 'Hindi'), 
(10, 'Amazon Alexa', '2.2.582', 'Guaraní');

--INSERT TipoUtilizador
INSERT INTO TipoUtilizador(nif, idAplicacao) VALUES 
(902854879, 2), -- DEFAULT = 0 no atributo 'principal'
(643375570, 2), 
(782459137, 1), 
(908361726, 4), 
(746544243, 2), 
(852937412, 1), 
(965485234, 1), 
(123987456, 4), 
(744584662, 1);
INSERT INTO TipoUtilizador VALUES (744584663, 1, 1);

--INSERT Acao
INSERT INTO Acao (nome) VALUES 
('ligar luzes'), 
('ligar ar-condicionado'), 
('ligar TV'), 
('desligar luzes'), 
('desligar ar-condicionado'), 
('ligar som'), 
('aumentar volume'), 
('diminuir volume'), 
('destrancar porta'), 
('trancar porta');

--INSERT Gatilho 
INSERT INTO Gatilho (idGatilho, condicao) VALUES 
(1, 'aproximação da porta'), 
(2, 'depois das 14h'), 
(3, 'temperatura maior que 30ºC'), 
(4, 'entre 8h e 10h'), 
(5, 'durante dias da semana'), 
(6, 'durante fim de semana'), 
(7, 'as quartas feiras'), 
(8, 'temperatura menor que 10ºC'), 
(9, 'movimento interno'), 
(10, 'movimento externo');

--INSERT GatilhoAcao
INSERT INTO GatilhoAcao (idGatilho, nomeAcao) VALUES 
(1, 'ligar luzes'), 
(4, 'ligar luzes'), 
(2, 'ligar TV'), 
(8, 'desligar ar-condicionado'), 
(6, 'ligar som'), 
(5, 'aumentar volume'), 
(4, 'diminuir volume'), 
(10, 'trancar porta'), 
(9, 'trancar porta'), 
(3, 'ligar ar-condicionado');

--INSERT Marca
INSERT INTO Marca (idMarca, nome) VALUES 
(1, 'Apple'), 
(2, 'Microsoft'), 
(3, 'Amazon'), 
(4, 'Google'), 
(5, 'Xiaomi'), 
(6, 'Samsung'), 
(7, 'Tuya'), 
(8, 'LG'), 
(9, 'BT'), 
(10, 'Dyson Cool'), 
(11, 'Sony'), 
(12, 'Smartify'), 
(13, 'Nedis');

--INSERT Modelo
INSERT INTO Modelo (idModelo, nome , idMarca) VALUES 
(1, 'Home Mini', 1), 
(2, 'Dot 3ª Geração', 3), 
(3, 'Nest Mini Tiza', 4), 
(4, 'Mi Smart Home Hub', 5), 
(5, 'Cortana Home', 2), 
(6, 'Smart TV QLED 65"', 6), 
(7, 'P1 SmartTV 4K UHD 43″', 5), 
(8, 'Mi LED Smart Bulb Essential', 5), 
(9, 'Nanoleaf Essentials A19 E27', 1), 
(10, 'Interruptor Táctil Duplo Smart WiFi Modern', 4), 
(11, 'Sensor Smart WiFi Detecção Abertura de Portas e Janelas', 4), 
(12, 'LG ThinQ Ar-Condicionado', 8), 
(13, 'Fm Mic Grasep D-s27', 9), 
(14, 'AM07', 10), 
(15, 'Wh-1000Xm3', 11), 
(16, 'SmartTV LG 50" 4K UHD 50UP7550', 8), 
(17, '4102171645014', 12), 
(18, 'WiFiRC10CBK', 13), 
(19, '1251238', 4);

--INSERT AssistenteVirtual
INSERT INTO AssistenteVirtual (idAssistente, nome, idioma, qtdDispositivosAssociados, idCasa, idModelo, idAplicacao) VALUES 
(1, 'Google Assistant', 'Português', 0, 1, 3, 5), 
(2, 'Google Assistant', 'Inglês', 0, 2, 3, 4), 
(3, 'Alexa', 'Inglês', 0, 3, 2, 2), 
(4, 'Siri', 'Mandarim', 0, 4, 1, 6), 
(5, 'Cortana', 'Russo', 0, 5, 5, 7), 
(6, 'Google Assistant', 'Hindi', 0, 10, 9, 9), 
(7, 'Google Assistant', 'Guaraní', 0, 8, 3, 10), 
(8, 'Alexa', 'Português', 0, 6, 4, 8), 
(9, 'Siri', 'Espanhol', 0, 7, 2, 3), 
(10, 'Cortana', 'Português', 0, 9, 2, 1);

--INSERT EspecificacoesComandoInfravermelho
INSERT INTO EspecificacoesComandoInfravermelho (nome, idModelo, alcance, frequencia) VALUES 
('Comando Universal Infravermelho Smart', 17, 25, 2400), 
('Comando Universal Inteligente C/Transformad Nedis', 18, 28, 2400), 
('Comando Inteligente SPC Horus 360º Infravermelhos Universal', 19, 30, 5000), 
('Comando Universal Infravermelho Dumb', 16, 50, 2000), 
('Comando Universal Inteligente S/Transformad Nedis', 19, 20, 2000), 
('Comando Inteligente SPC Horus 180º Infravermelhos Universal', 7, 25, 4000), 
('Comando Universal Infravermelho Genius', 10, 10, 1200), 
('Comando Universal Inteligente C/Transformers Autobots', 12, 35, 2390), 
('Comando Inteligente SPC Horus 90º Infravermelhos Universal', 7, 25, 2500), 
('Comando Inteligente SPC Horus 45º Infravermelhos Universal', 7, 28, 6400);

--INSERT ComandoInfravermelho
INSERT INTO ComandoInfravermelho (idComando, nome, idModelo, idAplicacao) VALUES 
(1, 'Comando Universal Infravermelho Smart', 17, 1), 
(2, 'Comando Universal Inteligente C/Transformad Nedis', 18, 3), 
(3, 'Comando Inteligente SPC Horus 360º Infravermelhos Universal', 19, 2), 
(4, 'Comando Universal Infravermelho Dumb', 16, 1), 
(5, 'Comando Universal Inteligente S/Transformad Nedis', 19, 3), 
(6, 'Comando Inteligente SPC Horus 180º Infravermelhos Universal', 7, 2), 
(7, 'Comando Universal Infravermelho Genius', 10, 1), 
(8, 'Comando Universal Inteligente C/Transformers Autobots', 12, 3), 
(9, 'Comando Inteligente SPC Horus 90º Infravermelhos Universal', 7, 2), 
(10, 'Comando Inteligente SPC Horus 45º Infravermelhos Universal', 7, 2);

--INSERT EspecificacoesDispositivoBluetooth
INSERT INTO EspecificacoesDispositivoBluetooth(nome, idModelo, versaoBluetooth, alcance) VALUES 
('Lâmpada', 8, '3.0', 14), 
('Lâmpada', 9, '4.0', 21), 
('Headphone', 15, '4.2.1', 18), 
('TV', 16, '2.1.1', 15), 
('Lâmpada', 10, '10.1', 30), 
('Lâmpada', 11, '1.1', 40), 
('Headphone', 10, '10.1', 35), 
('Câmera', 13, '6.0', 30), 
('Câmera', 15, '9.0', 40);
INSERT INTO EspecificacoesDispositivoBluetooth(nome, idModelo, versaoBluetooth, alcance, velocidadeMax) VALUES 
('TV', 1, '4.0.0', 18, 200);

--INSERT DispositivoBluetooth
INSERT INTO DispositivoBluetooth(idDispositivo, nome, idModelo, idAssistente) VALUES 
(1, 'Lâmpada', 8, 3), 
(2, 'Lâmpada', 9, 4), 
(3, 'Headphone', 15, 3), 
(4, 'TV', 16, 2), 
(5, 'Lâmpada', 10, 3), 
(6, 'Lâmpada', 11, 4), 
(7, 'Headphone', 10, 3), 
(8, 'Câmera', 13, 3), 
(9, 'Câmera', 15, 4), 
(10, 'TV', 1, 2);

--INSERT EspecificacoesDispositivoWiFi
INSERT INTO EspecificacoesDispositivoWiFi(nome, idModelo, alcance, velocidadeMax, frequencia) VALUES 
('TV', 6, 10, 100, 60), 
('TV', 7, 12, 200, 60), 
('TV', 17, 15, 300, 75), 
('TV', 8, 10, 150, 75);
INSERT INTO EspecificacoesDispositivoWiFi(nome, idModelo, alcance, frequencia) VALUES 
('Interruptor', 10, 8, 60), 
('Sensor', 11, 30, 50), 
('Interruptor', 3, 4, 30), 
('Sensor', 19, 15, 25);

--INSERT DispositivoWiFi
INSERT INTO DispositivoWiFi(idDispositivo, nome, idModelo) VALUES 
(1, 'TV', 6), 
(2, 'TV', 7), 
(3, 'Interruptor', 10), 
(4, 'TV', 6), 
(5, 'Sensor', 11), 
(6, 'TV', 6), 
(7, 'TV', 7), 
(8, 'Interruptor', 10), 
(9, 'TV', 8), 
(10, 'Sensor', 19);

--INSERT EspecificacoesDispositivoInfravermelho
INSERT INTO EspecificacoesDispositivoInfravermelho(nome, idModelo , frequencia) VALUES 
('Ar-Condicionado', 12, 2400), 
('Caixa de som', 13, 5000), 
('Ventilador', 14, 2400), 
('Ar-Condicionado', 1, 5000), 
('Caixa de som', 1, 4500), 
('Ventilador', 1, 2000), 
('Ar-Condicionado', 2, 1500), 
('Caixa de som', 3, 6400), 
('Ventilador', 4, 4000), 
('Caixa de som', 5, 2500);

--INSERT DispositivoInfravermelho
INSERT INTO DispositivoInfravermelho(idDispositivo, nome, idModelo) VALUES 
(1, 'Ar-Condicionado', 12), 
(2, 'Caixa de som', 13), 
(3, 'Ventilador', 14), 
(4, 'Ar-Condicionado', 1), 
(5, 'Caixa de som', 1), 
(6, 'Ventilador', 1), 
(7, 'Ar-Condicionado', 2), 
(8, 'Caixa de som', 3), 
(9, 'Ventilador', 4), 
(10, 'Caixa de som', 5);

--INSERT Grupo
INSERT INTO Grupo(idGrupo, nome, qtdDispositivosAssociados, idCasa) VALUES 
(1, 'quarto', 0, 1), 
(2, 'cozinha', 0, 1), 
(3, 'sala', 9, 2), 
(4, 'cozinha', 0, 2), 
(5, 'casa de banho', 0, 1), 
(6, 'luzes da casa', 0, 3), 
(7, 'portas da casa', 0, 3), 
(8, 'coisas da casa', 0, 4), 
(9, 'batatinha quente 123', 0, 2), 
(10, 'casa de banho 2, a sanita contra-ataca', 0, 1);

--INSERT GrupoDispositivoBluetooth
INSERT INTO GrupoDispositivoBluetooth (idGrupo, idDispositivo) VALUES 
(2, 3), 
(2, 4), 
(1, 4), 
(6, 2), 
(7, 3), 
(8, 4), 
(5, 4), 
(3, 2), 
(3, 3), 
(4, 4);

--INSERT GrupoDispositivoWiFi
INSERT INTO GrupoDispositivoWiFi (idGrupo, idDispositivo) VALUES 
(1, 2), 
(1, 1), 
(4, 3), 
(5, 1), 
(1, 4), 
(1, 8), 
(4, 4), 
(5, 9), 
(1, 6), 
(1, 7);

--INSERT GrupoDispositivoInfravermelho
INSERT INTO GrupoDispositivoInfravermelho (idGrupo, idDispositivo) VALUES 
(1, 1), 
(3, 1), 
(5, 2), 
(6, 2), 
(7, 3), 
(8, 4), 
(4, 4), 
(5, 9), 
(1, 6), 
(4, 3);

--Calcula quantidade de dispositivos associados a cada grupo 
--e atualiza o atributo qtdDispositivosAssociados da classe Grupo
UPDATE Grupo
SET qtdDispositivosAssociados =
 (SELECT COUNT(*) FROM
    (SELECT * FROM GrupoDispositivoBluetooth
        UNION ALL
     SELECT * FROM GrupoDispositivoWiFi
        UNION ALL
     SELECT * FROM GrupoDispositivoInfravermelho) T WHERE Grupo.idGrupo = T.idGrupo)
WHERE qtdDispositivosAssociados = 0;

--INSERT DispositivoBluetoothAcaoAssistente
INSERT INTO DispositivoBluetoothAcaoAssistente(idDispositivo, nomeAcao, idAssistente) VALUES 
(1, 'ligar luzes', 3), 
(1, 'desligar luzes', 3), 
(4, 'ligar TV', 2), 
(2, 'ligar luzes', 2), 
(5, 'ligar luzes', 5), 
(6, 'desligar luzes', 2), 
(7, 'ligar TV', 1), 
(8, 'ligar luzes', 3), 
(9, 'desligar luzes', 4), 
(2, 'desligar luzes', 2);

--INSERT DispositivoWiFiAcaoAssistente
INSERT INTO DispositivoWiFiAcaoAssistente(idDispositivo, nomeAcao, idAssistente) VALUES 
(1, 'ligar TV', 2), 
(5, 'ligar ar-condicionado', 3), 
(5, 'desligar ar-condicionado', 3), 
(6, 'ligar TV', 4), 
(7, 'ligar TV', 4), 
(9, 'ligar ar-condicionado', 5), 
(8, 'desligar ar-condicionado', 6), 
(3, 'ligar TV', 7), 
(4, 'ligar TV', 8), 
(2, 'ligar ar-condicionado', 9);

--INSERT DispositivoInfravermelhoAcaoAssistente
INSERT INTO DispositivoInfravermelhoAcaoAssistente(idDispositivo, nomeAcao, idAssistente) VALUES 
(1, 'ligar ar-condicionado', 10), 
(1, 'desligar ar-condicionado', 10), 
(2, 'ligar som', 1), 
(2, 'ligar luzes', 1), 
(5, 'ligar luzes', 7), 
(6, 'desligar luzes', 5), 
(9, 'ligar ar-condicionado', 2), 
(8, 'desligar ar-condicionado', 2), 
(3, 'ligar TV', 1), 
(2, 'aumentar volume', 1);

--Calcula quantidade de dispositivos associados a cada assistente virtual 
--e atualiza o atributo qtdDispositivosAssociados da classe AssistenteVirtual
UPDATE AssistenteVirtual
SET qtdDispositivosAssociados =
 (SELECT COUNT(*) FROM
    (SELECT idDispositivo, idAssistente FROM DispositivoInfravermelhoAcaoAssistente
        UNION ALL
     SELECT idDispositivo, idAssistente FROM DispositivoWiFiAcaoAssistente
        UNION ALL
     SELECT idDispositivo, idAssistente FROM DispositivoBluetoothAcaoAssistente
     ) T 
     WHERE AssistenteVirtual.idAssistente = T.idAssistente
 )
WHERE qtdDispositivosAssociados = 0;

--INSERT DispositivoWiFiAplicacao
INSERT INTO DispositivoWifiAplicacao (idDispositivo, idAplicacao) VALUES 
(1, 1), 
(2, 1), 
(3, 4), 
(4, 5), 
(2, 3), 
(3, 2), 
(4, 6), 
(2, 8), 
(3, 7), 
(5, 4);

--INSERT DispositivoInfraComando
INSERT INTO DispositivoInfraComando (idDispositivo, idComando) VALUES 
(1, 1), 
(1, 2), 
(6, 5), 
(4, 3), 
(2, 3), 
(3, 2), 
(6, 4), 
(8, 10), 
(3, 1), 
(10, 9);