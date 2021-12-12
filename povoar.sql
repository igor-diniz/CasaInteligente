PRAGMA foreign_keys = ON;
.mode columns
.header on

--Insert Pais
INSERT INTO Pais VALUES 
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
INSERT INTO Distrito VALUES 
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
INSERT INTO Concelho VALUES 
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
INSERT INTO Freguesia (nome, idConcelho) VALUES 
('Muro', 1),
('Conde', 2),
('Edson Queiroz', 3),
('Preston Hollow', 4),
('Les Halles', 5),
('Oliveirinha', 6),
('Amor', 7),
('Ajuda', 8),
('Santana', 9),
('Copacabana', 10);

--INSERT CodigoPostal
INSERT INTO CodigoPostal VALUES 
('4200083', 'Portugal'),
('4200089', 'Portugal'),
('4815549', 'Portugal'), 
('60811760', 'Brasil'), 
('07730', 'Estados Unidos'),
('02571', 'Brasil'),
('97225', 'Brasil'),
('30390', 'Brasil'),
('40028922', 'Brasil'),
('123789', 'Brasil'),
('22775040', 'Brasil');

--INSERT Morada
INSERT INTO Morada VALUES 
('rua da areosa', 155, '4200083'),
('rua da areosa', 130, '4200089'),
('rua arquitecto lobão vital', 25, '4815549'), 
('rua hill de moraes', 166, '60811760'), 
('baker street', 122, '07730'),
('rua maria dias hog',15,'97225'),
('avenida cruzeiro do sul',130, '02571'),
('rua inventadus agoris',25, '97225'),
('avenida capitão nascimento',254, '30390'),
('rua ian jumas', 169, '40028922'),
('rua da base de dados', 185, '123789'),
('avenida Abelardo Bueno', 2510, '22775040');

--INSERT Casa
INSERT INTO Casa(endereco,numero, orientacaoSolar, qtdComodos) VALUES 
('rua da areosa',155, 'N', 3),
('rua da areosa',130, 'NE', 2),
('rua arquitecto lobão vital',25, 'L', 3),
('rua hill de moraes',166, 'O', 4),
('rua maria dias hog',15, 'N', 3),
('avenida cruzeiro do sul',130, 'NE', 2),
('rua inventadus agoris',25, 'L', 3),
('avenida capitão nascimento',254, 'O', 4),
('rua ian jumas',169, 'O', 4),
('rua da base de dados',185, 'O', 4),
('avenida Abelardo Bueno',2510, 'SE', 5);

--INSERT Utilizador
INSERT INTO Utilizador VALUES 
(902854879, 'Eduardo Duarte', '2001-07-25', 'Brasil'),
(782459137, 'Igor Diniz', '2000-01-26', 'Brasil'),
(744584663, 'Ian Gomes', '2001-12-29', 'Brasil'),
(643375570, 'Pedro Sousa', '1990-05-05', 'Portugal'),
(908361726, 'Michael Jackson', '1958-08-29', 'Estados Unidos'),
(744584662, 'Yudi Playstation', '1990-10-22', 'Brasil'),
(746544243, 'Rosabel Whiskin', '1967-07-30', 'China'),
(852937412, 'Jena Schlagman', '2014-09-11',	'Bolivia'),
(965485234, 'Finn Vasler', '1973-04-20', 'Angola'),
(123987456, 'Marty Bechley', '1996-03-28', 'Bolivia');

--INSERT CasaUtilizador
INSERT INTO CasaUtilizador VALUES 
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
INSERT INTO Idioma VALUES 
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
INSERT INTO Aplicacao(nome, versao, idioma) VALUES 
('Amazon Alexa', '2.2.453031.0', 'Português'),
('Amazon Alexa', '2.2.448943.0', 'Inglês'),
('Google Home', '2.46.106', 'Espanhol'),
('Google Home', '2.46.106', 'Inglês'),
('Google Home', '2.46.106', 'Português'),
('Apple Siri', '8.3', 'Mandarim'),
('Microsoft Cortana', '2.9.11.2037', 'Russo'),
('Tuya Smart', '3.33.1', 'Português'),
('Amazon Alexa', '2.031.0', 'Hindi'),
('Amazon Alexa', '2.2.582', 'Guaraní');

--INSERT TipoUtilizador
INSERT INTO TipoUtilizador(nif,idAplicacao) VALUES 
(902854879, 2),
(643375570, 2),
(782459137, 1),
(908361726, 4),
(746544243, 2),
(852937412, 2),
(965485234, 1),
(123987456, 4),
(744584662, 4);
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
('diminuir volume'),
('destrancar porta'),
('trancar porta');

--INSERT Gatilho 
INSERT INTO Gatilho(condicao) VALUES 
('aproximação da porta'),
('depois das 14h'),
('temperatura maior que 30ºC'),
('entre 8h e 10h'),
('durante dias da semana'),
('durante fim de semana'),
('as quartas feiras'),
('temperatura menor que 10ºC'),
('movimento interno'),
('movimento externo');

--INSERT GatilhoAcao
INSERT INTO GatilhoAcao (idGatilho, nomeAcao) VALUES 
(1,'ligar luzes'),
(4,'ligar luzes'),
(2, 'ligar TV'),
(8,'desligar ar-condicionado'),
(6,'ligar som'),
(5,'aumentar volume'),
(4,'diminuir volume'),
(10, 'trancar porta'),
(9, 'trancar porta'),
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
(15, 'Wh-1000Xm3',11),
(16, 'SmartTV LG 50" 4K UHD 50UP7550',8),
(17, '4102171645014',12),
(18, 'WifiRC10CBK',13),
(19, '1251238',4);

--INSERT AssistenteVirtual
INSERT INTO AssistenteVirtual VALUES 
(1, 'Google Assistant', 'Português', 5, 1, 3, 5),
(2, 'Google Assistant', 'Inglês', 7, 2, 3, 4),
(3, 'Alexa', 'Inglês', 10, 3, 2, 2),
(4, 'Siri', 'Mandarim', 12, 4, 1, 6),
(5, 'Cortana', 'Russo', 7, 5, 5, 7),
(6, 'Google Assistant', 'Hindi', 7, 10, 9, 1),
(7, 'Google Assistant', 'Guaraní', 7, 8, 3, 10),
(8, 'Alexa', 'Alemão', 8, 6, 4, 8),
(9, 'Siri', 'Mandarim', 4, 7, 2, 3),
(10, 'Cortana', 'Russo', 8, 9, 2, 9);

--INSERT EspecificacoesComandoInfravermelho
INSERT INTO EspecificacoesComandoInfravermelho(nome, idModelo, alcance, frequencia) VALUES 
('Comando Universal Infravermelho Smart',17,25,2400),
('Comando Universal Inteligente C/Transformad Nedis',18,28,2400),
('Comando Inteligente SPC Horus 360º Infravermelhos Universal',19,30,5000),
('Comando Universal Infravermelho Dumb',16,50,2000),
('Comando Universal Inteligente S/Transformad Nedis',19,20,2000),
('Comando Inteligente SPC Horus 180º Infravermelhos Universal',7,25,4000),
('Comando Universal Infravermelho Genius',10,10,1200),
('Comando Universal Inteligente C/Transformers Autobots',12,35,2390),
('Comando Inteligente SPC Horus 90º Infravermelhos Universal',7,25,2500),
('Comando Inteligente SPC Horus 45º Infravermelhos Universal',7,28,6400);

--INSERT ComandoInfravermelho
INSERT INTO ComandoInfravermelho(nome, idModelo, idAplicacao) VALUES 
('Comando Universal Infravermelho Smart',17,1),
('Comando Universal Inteligente C/Transformad Nedis',18,3),
('Comando Inteligente SPC Horus 360º Infravermelhos Universal',19,2),
('Comando Universal Infravermelho Dumb',16,1),
('Comando Universal Inteligente S/Transformad Nedis',19,3),
('Comando Inteligente SPC Horus 180º Infravermelhos Universal',7,2),
('Comando Universal Infravermelho Genius',10,1),
('Comando Universal Inteligente C/Transformers Autobots',12,3),
('Comando Inteligente SPC Horus 90º Infravermelhos Universal',7,2),
('Comando Inteligente SPC Horus 45º Infravermelhos Universal',7,2);

--INSERT EspecificacoesDispositivoBluetooth
INSERT INTO EspecificacoesDispositivoBluetooth(nome, idModelo, versaoBluetooth, alcance) VALUES 
('Lâmpada',8,'3.0',14),
('Lâmpada',9,'4.0',21),
('Headphone',15,'4.2.1',18),
('TV',16,'2.1.1',15),
('Lâmpada',10,'10.1',30),
('Lâmpada',11,'1.1',40),
('Headphone',10,'10.1',35),
('Câmera',13,'6.0',30),
('Câmera',15,'9.0',40);
INSERT INTO EspecificacoesDispositivoBluetooth(nome, idModelo, versaoBluetooth, alcance, velocidadeMax) VALUES ('TV',1,'4.0.0',18,200);

--INSERT DispositivoBluetooth
INSERT INTO DispositivoBluetooth(nome,idModelo,idAssistente) VALUES 
('Lâmpada',8,3),
('Lâmpada',9,4),
('Headphone',15,3),
('TV',16,2),
('Lâmpada',10,3),
('Lâmpada',11,4),
('Headphone',10,3),
('Câmera',13,3),
('Câmera',15,4),
('TV',1,2);

--INSERT EspecificacoesDispositivoWifi
INSERT INTO EspecificacoesDispositivoWifi(nome,idModelo,alcance,velocidadeMax,frequencia) VALUES 
('TV',6, 10, 100, 60),
('TV',7, 12, 200, 60),
('TV',1, 15, 300, 75),
('TV',2, 10, 150, 75);
INSERT INTO EspecificacoesDispositivoWifi(nome,idModelo,alcance,frequencia) VALUES 
('Interruptor',10, 8, 60),
('Sensor',11, 30, 50),
('Interruptor',3, 4, 30),
('Sensor',5, 15, 25);

--INSERT DispositivoWifi
INSERT INTO DispositivoWifi(nome,idModelo) VALUES 
('TV',6),
('TV',7),
('Interruptor',10),
('TV',6),
('Sensor',11),
('TV',1),
('TV',2),
('Interruptor',3),
('TV',2),
('Sensor',5);

--INSERT EspecificacoesDispositivoInfravermelho
INSERT INTO EspecificacoesDispositivoInfravermelho(nome, idModelo ,frequencia) VALUES 
('Ar-Condicionado',12,2400),
('Caixa de som',13,5000),
('Ventilador',14,2400),
('Ar-Condicionado',1,8000),
('Caixa de som',1,4500),
('Ventilador',1,2000),
('Ar-Condicionado',2,1500),
('Caixa de som',3,9800),
('Ventilador',4,4000),
('Caixa de som',5,3500);

--INSERT DispositivoInfravermelho
INSERT INTO DispositivoInfravermelho(idDispositivo, nome, idModelo) VALUES 
(1,'Ar-Condicionado',12),
(2,'Caixa de som',13),
(3,'Ventilador',14),
(4,'Ar-Condicionado',1),
(5,'Caixa de som',1),
(6,'Ventilador',1),
(7,'Ar-Condicionado',2),
(8,'Caixa de som',3),
(9,'Ventilador',4),
(10,'Caixa de som',5);

--INSERT Grupo
INSERT INTO Grupo(nome, qtdDispositivosAssociados, idCasa) VALUES 
('quarto', 4, 1),
('cozinha', 6, 1),
('sala', 9, 2),
('cozinha', 3, 2),
('casa de banho', 2, 1),
('luzes da casa', 4, 3),
('portas da casa', 6, 3),
('coisas da casa', 9, 4),
('batatinha quente 123', 3, 2),
('casa de banho 2, a sanita contra-ataca', 2, 1);

--INSERT GrupoDispositivoBluetooth
INSERT INTO GrupoDispositivoBluetooth VALUES 
(2,3),
(2,4),
(1,4),
(6,2),
(7,3),
(8,4),
(5,4),
(3,2),
(3,3),
(4,4);


--INSERT GrupoDispositivoWifi
INSERT INTO GrupoDispositivoWifi VALUES 
(1,2),
(1,1),
(4,3),
(5,1),
(1,4),
(1,8),
(4,4),
(5,9),
(1,6),
(1,7);
--INSERT GrupoDispositivoInfravermelho
INSERT INTO GrupoDispositivoInfravermelho VALUES 
(1,1),
(3,1),
(5,2),
(6,2),
(7,3),
(8,4),
(4,4),
(5,9),
(1,6),
(4,3);

--INSERT DispositivoBluetoothAcaoAssistente
INSERT INTO DispositivoBluetoothAcaoAssistente(idDispositivo, nomeAcao , idAssistente) VALUES 
(1,'ligar luzes',3),
(1,'desligar luzes',3),
(4,'ligar TV',2),
(2,'ligar luzes',2),
(5,'ligar luzes',5),
(6,'desligar luzes',2),
(7,'ligar TV',1),
(8,'ligar luzes',3),
(9,'desligar luzes',4),
(2,'desligar luzes',2);

--INSERT DispositivoWifiAcaoAssistente
INSERT INTO DispositivoWifiAcaoAssistente(idDispositivo, nomeAcao, idAssistente) VALUES 
(1,'ligar TV',2),
(5,'ligar ar-condicionado',3),
(5,'desligar ar-condicionado',3),
(6,'ligar TV',2),
(7,'ligar TV',2),
(9,'ligar ar-condicionado',3),
(8,'desligar ar-condicionado',3),
(3,'ligar TV',2),
(4,'ligar TV',2),
(2,'ligar ar-condicionado',3);

--INSERT DispositivoInfravermelhoAcaoAssistente
INSERT INTO DispositivoInfravermelhoAcaoAssistente(idDispositivo, nomeAcao, idAssistente) VALUES 
(1,'ligar ar-condicionado',3),
(1,'desligar ar-condicionado',3),
(2,'ligar som',2),
(2,'ligar luzes',2),
(5,'ligar luzes',5),
(6,'desligar luzes',2),
(9,'ligar ar-condicionado',3),
(8,'desligar ar-condicionado',3),
(3,'ligar TV',2),
(2,'aumentar volume',2);

--INSERT DispositivoWifiAplicacao
INSERT INTO DispositivoWifiAplicacao VALUES 
(1,1),
(2,1),
(3,4),
(4,5),
(2,3),
(3,2),
(4,6),
(2,8),
(3,7),
(5,4);

--INSERT DispositivoInfraComando
INSERT INTO DispositivoInfraComando VALUES 
(1,1),
(1,3),
(3,1),
(4,5),
(2,3),
(3,2),
(4,6),
(2,8),
(3,7),
(2,2);