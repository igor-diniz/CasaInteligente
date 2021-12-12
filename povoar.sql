PRAGMA foreign_keys = ON;
.mode columns
.header on

--Insert Pais
INSERT INTO Pais VALUES 
('Portugal'),
('Brasil'),
('Estados Unidos'),
('França'),
('China');

--INSERT Distrito
INSERT INTO Distrito VALUES 
(1, 'Porto', 'Portugal'),
(2, 'Braga', 'Portugal'),
(3, 'Ceará', 'Brasil'),
(4, 'Texas', 'Estados Unidos'),
(5, 'Ilha de França', 'França');

--INSERT Concelho
INSERT INTO Concelho VALUES 
(1, 'Trofa', 1),
(2, 'Guimarães', 2),
(3, 'Fortaleza', 3),
(4, 'Dallas', 4),
(5, 'Paris', 5);

--INSERT Freguesia
INSERT INTO Freguesia (nome, idConcelho) VALUES 
('Muro', 1),
('conde', 2),
('Edson Queiroz', 3),
('Preston Hollow', 4),
('Les Halles', 5);

--INSERT CodigoPostal
INSERT INTO CodigoPostal VALUES 
('4200083', 'Portugal'),
('4200089', 'Portugal'),
('4815549', 'Portugal'), 
('60811760', 'Brasil'), 
('07730', 'Estados Unidos'),
('22775040', 'Brasil');

--INSERT Morada
INSERT INTO Morada VALUES 
('rua da areosa', 155, '4200083'),
('rua da areosa', 130, '4200089'),
('rua arquiteto lobão vital', 25, '4815549'), 
('rua hill de moraes', 166, '60811760'), 
('baker street', 122, '07730'),
('Avenida Abelardo Bueno', 2510, '22775040');


--INSERT Casa
INSERT INTO Casa(endereco,numero, orientacaoSolar, qtdComodos) VALUES 
('rua da areosa',155, 'N', 3),
('rua da areosa',130, 'NE', 2),
('rua arquiteto lobão vital',25, 'L', 3),
('rua hill de moraes',166, 'O', 4),
('Avenida Abelardo Bueno',2510, 'SE', 5);

--INSERT Utilizador
INSERT INTO Utilizador VALUES 
(902854879, 'Eduardo Duarte', '2001-07-25', 'Brasil'),
(782459137, 'Igor Diniz', '2000-01-26', 'Brasil'),
(744584663, 'Ian Gomes', '2001-12-29', 'Brasil'),
(643375570, 'Pedro Sousa', '1990-05-05', 'Portugal'),
(908361726, 'Michael Jackson', '1958-08-29', 'Estados Unidos');

--INSERT CasaUtilizador
INSERT INTO CasaUtilizador VALUES 
(1, 902854879),
(1, 782459137),
(2, 744584663),
(2, 908361726),
(3, 643375570),
(4, 643375570);

--INSERT Idioma
INSERT INTO Idioma VALUES 
('Português'),
('Inglês'),
('Espanhol'),
('Françês'),
('Mandarim'),
('Russo');

--INSERT Aplicacao
INSERT INTO Aplicacao(nome, versao, idioma) VALUES 
('Amazon Alexa', '2.2.453031.0', 'Português'),
('Amazon Alexa', '2.2.448943.0', 'Inglês'),
('Google Home', '2.46.106', 'Espanhol'),
('Google Home', '2.46.106', 'Inglês'),
('Google Home', '2.46.106', 'Português'),
('Apple Siri', '8.3', 'Mandarim'),
('Microsoft Cortana', '2.9.11.2037', 'Russo'),
('Tuya Smart', '3.33.1', 'Português');

--INSERT TipoUtilizador
INSERT INTO TipoUtilizador(nif,idAplicacao) VALUES 
(902854879, 2),
(643375570, 2),
(782459137, 1),
(908361726, 4);
INSERT INTO TipoUtilizador VALUES (744584663, 2, 1);

--INSERT Acao
INSERT INTO Acao VALUES 
('ligar luzes'),
('ligar ar-condicionado'),
('ligar TV'),
('desligar luzes'),
('desligar ar-condicionado'),
('ligar som'),
('aumentar volume'),
('diminuir volume');

--INSERT Gatilho 
INSERT INTO Gatilho(condicao) VALUES 
('aproximação'),
('comando de voz'),
('temperatura'),
('movimento');

--INSERT GatilhoAcao
INSERT INTO GatilhoAcao (idGatilho, nomeAcao) VALUES 
(1,'ligar luzes'),
(4,'ligar luzes'),
(2, 'ligar TV'),
(3, 'desligar ar-condicionado');

--INSERT Marca
INSERT INTO Marca(nome) VALUES 
('Apple'),
('Microsoft'),
('Amazon'),
('Google'),
('Xiaomi'),
('Samsung'),
('Tuya'),
('LG'),
('BT'),
('Dyson Cool'),
('Sony'),
('Smartify'),
('Nedis');

--INSERT Modelo
INSERT INTO Modelo VALUES 
(1, 'Home Mini', 1),
(2, 'Dot 3ª Geração', 3),
(3, 'Nest Mini Tiza', 4),
(4, 'Mi Smart Home Hub', 5),
(5, 'Cortana Home', 2),
(6, 'Smart TV QLED 65"', 6),
(7, 'P1 SmartTV 4K UHD 43″', 5),
(8, 'Mi LED Smart Bulb Essential', 5),
(9, 'Nanoleaf Essentials A19 E27', 1),
(10, 'Interruptor Táctil Duplo Smart Wifi Modern', 4),
(11, 'Sensor Smart Wifi Detecção Abertura de Portas e Janelas', 4),
(12, 'LG ThinQ Ar-Condicionado', 8),
(13, 'Fm Mic Grasep D-s27', 9),
(14, 'AM07', 10),
(15,'Wh-1000Xm3',11),
(16,'SmartTV LG 50" 4K UHD 50UP7550',8),
(17,'4102171645014',12),
(18,'WifiRC10CBK',13),
(19,'1251238',4);

--INSERT AssistenteVirtual
INSERT INTO AssistenteVirtual VALUES 
(1, 'Google Assistant', 'Português', 5, 1, 3, 5),
(2, 'Google Assistant', 'Inglês', 7, 2, 3, 4),
(3, 'Alexa', 'Inglês', 10, 3, 2, 2),
(4, 'Siri', 'Mandarim', 12, 4, 1, 6),
(5, 'Cortana', 'Russo', 7, 5, 5, 7);

--INSERT EspecificacoesComandoInfravermelho
INSERT INTO EspecificacoesComandoInfravermelho(nome, idModelo, alcance, frequencia) VALUES 
('Comando Universal Infravermelho Smart',17,25,2400),
('Comando Universal Inteligente C/Transformad Nedis',18,28,2400),
('Comando Inteligente SPC Horus 360º Infravermelhos Universal',19,30,5000);

--INSERT ComandoInfravermelho
INSERT INTO ComandoInfravermelho(nome, idModelo, idAplicacao) VALUES 
('Comando Universal Infravermelho Smart',17,1),
('Comando Universal Inteligente C/Transformad Nedis',18,3),
('Comando Inteligente SPC Horus 360º Infravermelhos Universal',19,2);

--INSERT DispositivoBluetooth
INSERT INTO DispositivoBluetooth(nome,idModelo,idAssistente) VALUES 
('Lâmpada',8,3),
('Lâmpada',9,4),
('Headphone',15,3),
('TV',16,2);

--INSERT EspecificacoesDispositivoBluetooth
INSERT INTO EspecificacoesDispositivoBluetooth(nome, idModelo, versaoBluetooth, alcance) VALUES 
('Lâmpada',8,'3.0',14),
('Lâmpada',9,'4.0',21),
('Headphone',15,'4.2.1',18);
INSERT INTO EspecificacoesDispositivoBluetooth(nome, idModelo, versaoBluetooth, alcance, velocidadeMax) VALUES ('TV',16,'4.0.0',18,200);

--INSERT DispositivoWifi
INSERT INTO DispositivoWifi(nome,idModelo) VALUES 
('TV',6),
('TV',7),
('Interruptor',10),
('TV',6),
('Sensor',11);

--INSERT EspecificacoesDispositivoWifi
INSERT INTO EspecificacoesDispositivoWifi(nome,idModelo,alcance,velocidadeMax,frequencia) VALUES 
('TV',6, 10, 100, 60),
('TV',7, 12, 200, 60);
INSERT INTO EspecificacoesDispositivoWifi(nome,idModelo,alcance,frequencia) VALUES 
('Interruptor',10, 8, 60),
('Sensor',11, 30, 50);

--INSERT DispositivoInfravermelho
INSERT INTO DispositivoInfravermelho(idDispositivo, nome, idModelo) VALUES 
(1,'Ar-Condicionado',12),
(2,'Caixa de som',13),
(3,'Ventilador',14);

--INSERT EspecificacoesDispositivoInfravermelho
INSERT INTO EspecificacoesDispositivoInfravermelho(nome, idModelo ,frequencia) VALUES 
('Ar-Condicionado',12,2400),
('Caixa de som',13,5000),
('Ventilador',14,2400);

--INSERT Grupo
INSERT INTO Grupo(nome, qtdDispositivosAssociados, idCasa) VALUES 
('quarto', 4, 1),
('cozinha', 6, 1),
('sala', 9, 2),
('cozinha', 3, 2),
('casa de banho', 2, 1);

--INSERT GrupoDispositivoBluetooth
INSERT INTO GrupoDispositivoBluetooth VALUES 
(1,3),
(1,4),
(3,4),
(5,2);

--INSERT GrupoDispositivoWifi
INSERT INTO GrupoDispositivoWifi VALUES 
(1,2),
(1,1),
(4,3),
(5,3);

--INSERT GrupoDispositivoInfravermelho
INSERT INTO GrupoDispositivoInfravermelho VALUES 
(1,1),
(3,1),
(5,2),
(4,3);

--INSERT DispositivoBluetoothAcaoAssistente
INSERT INTO DispositivoBluetoothAcaoAssistente(idDispositivo, nomeAcao , idAssistente) VALUES 
(1,'ligar luzes',3),
(1,'desligar luzes',3),
(4,'ligar TV',2),
(2,'ligar luzes',2),
(2,'desligar luzes',2);

--INSERT DispositivoWifiAcaoAssistente
INSERT INTO DispositivoWifiAcaoAssistente(idDispositivo, nomeAcao, idAssistente) VALUES 
(1,'ligar TV',2),
(5,'ligar ar-condicionado',3),
(5,'desligar ar-condicionado',3),
(2,'ligar TV',2);

--INSERT DispositivoInfravermelhoAcaoAssistente
INSERT INTO DispositivoInfravermelhoAcaoAssistente(idDispositivo, nomeAcao, idAssistente) VALUES 
(1,'ligar ar-condicionado',3),
(1,'desligar ar-condicionado',3),
(2,'ligar som',2),
(2,'aumentar volume',2);

--INSERT DispositivoWifiAplicacao
INSERT INTO DispositivoWifiAplicacao VALUES 
(1,1),
(2,1),
(3,3),
(4,6),
(5,4);

--INSERT DispositivoInfraComando
INSERT INTO DispositivoInfraComando VALUES 
(1,1),
(1,3),
(3,1),
(2,2);