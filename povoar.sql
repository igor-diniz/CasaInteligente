PRAGMA foreign_keys = ON;
.mode columns
.header on
INSERT INTO Pais VALUES ('Portugal');
INSERT INTO Pais VALUES ('Brasil');
INSERT INTO Pais VALUES ('Estados Unidos');
INSERT INTO Pais VALUES ('França');
INSERT INTO Pais VALUES ('China');
INSERT INTO Idioma VALUES ('Português');
INSERT INTO Idioma VALUES ('Inglês') ;
INSERT INTO Idioma VALUES ('Espanhol');
INSERT INTO Idioma VALUES ('Françês');
INSERT INTO Idioma VALUES ('Chinês');
INSERT INTO Gatilho(condicao) VALUES ('aproximação');
INSERT INTO Gatilho(condicao) VALUES ('comando de voz');
INSERT INTO Gatilho(condicao) VALUES ('temperatura');
INSERT INTO Gatilho(condicao) VALUES ('movimento');
INSERT INTO Acao VALUES ('ligar luzes');
INSERT INTO Acao VALUES ('ligar ar-condicionado');
INSERT INTO Acao VALUES ('ligar TV');
INSERT INTO Acao VALUES ('desligar luzes');
INSERT INTO Acao VALUES ('desligar ar-condicionado');
INSERT INTO Acao VALUES ('ligar som');
INSERT INTO Acao VALUES ('aumentar volume');
INSERT INTO Acao VALUES ('diminuir volume');
INSERT INTO Marca(nome) VALUES ('Apple');
INSERT INTO Marca(nome) VALUES ('Microsoft');
INSERT INTO Marca(nome) VALUES ('Amazon');
INSERT INTO Marca(nome) VALUES ('Google');
INSERT INTO Marca(nome) VALUES ('Xiaomi');
INSERT INTO Marca(nome) VALUES ('Samsung');
INSERT INTO Marca(nome) VALUES ('Tuya');
INSERT INTO Marca(nome) VALUES ('LG');
INSERT INTO Marca(nome) VALUES ('BT');
INSERT INTO Marca(nome) VALUES ('Dyson Cool');
INSERT INTO Marca(nome) VALUES ('Sony');
INSERT INTO Marca(nome) VALUES ('Smartify');
INSERT INTO Marca(nome) VALUES ('Nedis');
INSERT INTO Morada VALUES ('rua da areosa', 155, 4200083, 'Portugal'); 
INSERT INTO Morada VALUES ('rua da areosa', 130, 4200089, 'Portugal'); 
INSERT INTO Morada VALUES ('arquiteto lobão vital', 25, 4815549, 'Portugal'); 
INSERT INTO Morada VALUES ('rua hill de moraes', 166, 60811760, 'Brasil'); 
INSERT INTO Morada VALUES ('baker street', 122, 07730, 'Estados Unidos');
INSERT INTO Casa(endereco,numero, orientacaoSolar, qtdComodos) VALUES ('rua da areosa',155, 'N', 3);
INSERT INTO Casa(endereco,numero, orientacaoSolar, qtdComodos) VALUES ('rua da areosa',130, 'NE', 2);
INSERT INTO Casa(endereco,numero, orientacaoSolar, qtdComodos) VALUES ('arquiteto lobão vital',25, 'L', 3);
INSERT INTO Casa(endereco,numero, orientacaoSolar, qtdComodos) VALUES ('rua hill de moraes',166, 'O', 4);
INSERT INTO Grupo(nome, qtdDispositivosAssociados, idCasa) VALUES ('quarto', 4, 1);
INSERT INTO Grupo(nome, qtdDispositivosAssociados, idCasa) VALUES ('cozinha', 6, 1);
INSERT INTO Grupo(nome, qtdDispositivosAssociados, idCasa) VALUES ('sala', 9, 2);
INSERT INTO Grupo(nome, qtdDispositivosAssociados, idCasa) VALUES ('cozinha', 3, 2);
INSERT INTO Grupo(nome, qtdDispositivosAssociados, idCasa) VALUES ('casa de banho', 2, 1);
INSERT INTO Utilizador VALUES (902854879, 'Eduardo Duarte', '2001-07-25', 'Brasil');
INSERT INTO Utilizador VALUES (782459137, 'Igor Diniz', '2000-01-26', 'Brasil');
INSERT INTO Utilizador VALUES (744584663, 'Ian Gomes', '2001-12-29', 'Brasil');
INSERT INTO Utilizador VALUES (643375570, 'Pedro Sousa', '1990-05-05', 'Portugal');
INSERT INTO Utilizador VALUES (908361726, 'Michael Jackson', '1958-08-29', 'Estados Unidos');
INSERT INTO Aplicacao(nome, versao, idioma) VALUES ('Amazon Alexa', '2.2.453031.0', 'Português');
INSERT INTO Aplicacao(nome, versao, idioma) VALUES ('Amazon Alexa', '2.2.448943.0', 'Inglês');
INSERT INTO Aplicacao(nome, versao, idioma) VALUES ('Google Home', '2.46.106', 'Espanhol');
INSERT INTO Aplicacao(nome, versao, idioma) VALUES ('Apple Siri', '8.3', 'Inglês');
INSERT INTO Aplicacao(nome, versao, idioma) VALUES ('Microsoft Cortana', '2.9.11.2037', 'Português');
INSERT INTO Aplicacao(nome, versao, idioma) VALUES ('Tuya Smart', '3.33.1', 'Português');
INSERT INTO Distrito VALUES (1, 'Porto', 'Portugal');
INSERT INTO Distrito VALUES (2, 'Braga', 'Portugal');
INSERT INTO Distrito VALUES (3, 'Ceará', 'Brasil');
INSERT INTO Distrito VALUES (4, 'Texas', 'Estados Unidos');
INSERT INTO Distrito VALUES (5, 'Ilha de França', 'França');
INSERT INTO Concelho VALUES (1, 'Trofa', 1);
INSERT INTO Concelho VALUES (2, 'Guimarães', 2);
INSERT INTO Concelho VALUES (3, 'Fortaleza', 3);
INSERT INTO Concelho VALUES (4, 'Dallas', 4);
INSERT INTO Concelho VALUES (5, 'Paris', 5);
INSERT INTO Freguesia (nome, idConcelho) VALUES ('Muro', 1);
INSERT INTO Freguesia (nome, idConcelho) VALUES ('conde', 2);
INSERT INTO Freguesia (nome, idConcelho) VALUES ('Edson Queiroz', 3);
INSERT INTO Freguesia (nome, idConcelho) VALUES ('Preston Hollow', 4);
INSERT INTO Freguesia (nome, idConcelho) VALUES ('Les Halles', 5);
INSERT INTO Modelo VALUES (1, 'Home Mini', 1);
INSERT INTO Modelo VALUES (2, 'Dot 3ª Geração', 3);
INSERT INTO Modelo VALUES (3, 'Nest Mini Tiza', 4);
INSERT INTO Modelo VALUES (4, 'Mi Smart Home Hub', 5);
INSERT INTO Modelo VALUES (5, 'Cortana Home', 2);
INSERT INTO Modelo VALUES (6, 'Smart TV QLED 65"', 6);
INSERT INTO Modelo VALUES (7, 'P1 SmartTV 4K UHD 43″', 5);
INSERT INTO Modelo VALUES (8, 'Mi LED Smart Bulb Essential', 5);
INSERT INTO Modelo VALUES (9, 'Nanoleaf Essentials A19 E27', 1);
INSERT INTO Modelo VALUES (10, 'Interruptor Táctil Duplo Smart Wifi Modern', 4);
INSERT INTO Modelo VALUES (11, 'Sensor Smart WiFi Detecção Abertura de Portas e Janelas', 4);
INSERT INTO Modelo VALUES (12, 'LG ThinQ Ar-Condicionado', 8);
INSERT INTO Modelo VALUES (13, 'Fm Mic Grasep D-s27', 9);
INSERT INTO Modelo VALUES (14, 'AM07', 10);
INSERT INTO Modelo VALUES (15,'Wh-1000Xm3',11);
INSERT INTO Modelo VALUES (16,'SmartTV LG 50" 4K UHD 50UP7550',8);
INSERT INTO Modelo VALUES (17,'4102171645014',12);
INSERT INTO Modelo VALUES (18,'WIFIRC10CBK',13);
INSERT INTO Modelo VALUES (19,'1251238',4);
INSERT INTO AssistenteVirtual VALUES (1, 'Google Assistant', 'Português', 5, 1, 3, 3);
INSERT INTO AssistenteVirtual VALUES (2, 'Google Assistant', 'Inglês', 7, 2, 3, 3);
INSERT INTO AssistenteVirtual VALUES (3, 'Alexa', 'Inglês', 10, 3, 2, 2);
INSERT INTO AssistenteVirtual VALUES (4, 'Apple HomePod', 'Chinês', 12, 4, 1, 4);
INSERT INTO CasaUtilizador VALUES (1, 902854879);
INSERT INTO CasaUtilizador VALUES (1, 782459137);
INSERT INTO CasaUtilizador VALUES (2, 744584663);
INSERT INTO CasaUtilizador VALUES (2, 908361726);
INSERT INTO CasaUtilizador VALUES (3, 643375570);
INSERT INTO CasaUtilizador VALUES (4, 643375570);
INSERT INTO TipoUtilizador(nif,idAplicacao) VALUES (902854879, 2);
INSERT INTO TipoUtilizador(nif,idAplicacao) VALUES (643375570, 2);
INSERT INTO TipoUtilizador(nif,idAplicacao) VALUES (782459137, 1);
INSERT INTO TipoUtilizador(nif,idAplicacao) VALUES (908361726, 4);
INSERT INTO TipoUtilizador VALUES (744584663, 2, 1);
INSERT INTO EspecificacoesDispositivoWiFi(nome,idModelo,alcance,velocidadeMax,frequencia) VALUES ('TV',6, 10, 100, 60);
INSERT INTO EspecificacoesDispositivoWiFi(nome,idModelo,alcance,velocidadeMax,frequencia) VALUES ('TV',7, 12, 200, 60);
INSERT INTO EspecificacoesDispositivoWiFi(nome,idModelo,alcance,frequencia) VALUES ('Interruptor',10, 8, 60);
INSERT INTO EspecificacoesDispositivoWiFi(nome,idModelo,alcance,frequencia) VALUES ('Sensor',11, 30, 50);
INSERT INTO DispositivoWiFi(nome,idModelo) VALUES ('TV',6);
INSERT INTO DispositivoWiFi(nome,idModelo) VALUES ('TV',7);
INSERT INTO DispositivoWIFI(nome,idModelo) VALUES ('Interruptor',10);
INSERT INTO DispositivoWiFi(nome,idModelo) VALUES ('TV',6);
INSERT INTO DispositivoWIFI(nome,idModelo) VALUES ('Sensor',11);
INSERT INTO EspecificacoesDispositivoInfravermelho(nome, idModelo ,frequencia) VALUES ('Ar-Condicionado',12,2400);
INSERT INTO EspecificacoesDispositivoInfravermelho(nome, idModelo ,frequencia) VALUES ('Caixa de som',13,5000);
INSERT INTO EspecificacoesDispositivoInfravermelho(nome, idModelo ,frequencia) VALUES ('Ventilador',14,2400);
INSERT INTO DispositivoInfravermelho(idDispositivo, nome, idModelo) VALUES (1,'Ar-Condicionado',12);
INSERT INTO DispositivoInfravermelho(idDispositivo, nome, idModelo) VALUES (2,'Caixa de som',13);
INSERT INTO DispositivoInfravermelho(idDispositivo, nome, idModelo) VALUES (3,'Ventilador',14);
INSERT INTO EspecificacoesDispositivoBluetooth(nome, idModelo, versaoBluetooth, alcance) VALUES ('Lâmpada',8,'3.0',14);
INSERT INTO EspecificacoesDispositivoBluetooth(nome, idModelo, versaoBluetooth, alcance) VALUES ('Lâmpada',9,'4.0',21);
INSERT INTO EspecificacoesDispositivoBluetooth(nome, idModelo, versaoBluetooth, alcance) VALUES ('Headphone',15,'4.2.1',18);
INSERT INTO EspecificacoesDispositivoBluetooth(nome, idModelo, versaoBluetooth, alcance, velocidadeMax) VALUES ('TV',16,'4.0.0',18,200);
INSERT INTO DispositivoBluetooth(nome,idModelo,idAssistente) VALUES ('Lâmpada',8,3);
INSERT INTO DispositivoBluetooth(nome,idModelo,idAssistente) VALUES ('Lâmpada',9,4);
INSERT INTO DispositivoBluetooth(nome,idModelo,idAssistente) VALUES ('Headphone',15,3);
INSERT INTO DispositivoBluetooth(nome,idModelo,idAssistente) VALUES ('TV',16,2);
INSERT INTO WifiAplicacao VALUES (1,1);
INSERT INTO WifiAplicacao VALUES (2,1);
INSERT INTO WifiAplicacao VALUES (3,3);
INSERT INTO WifiAplicacao VALUES (4,6);
INSERT INTO WifiAplicacao VALUES (5,4);
INSERT INTO EspecificacoesComandoInfravermelho(nome, idModelo, alcance, frequencia) VALUES ('Comando Universal Infravermelho Smart',17,25,2400);
INSERT INTO EspecificacoesComandoInfravermelho(nome, idModelo, alcance, frequencia) VALUES ('Comando Universal Inteligente C/Transformad Nedis',18,28,2400);
INSERT INTO EspecificacoesComandoInfravermelho(nome, idModelo, alcance, frequencia) VALUES ('Comando Inteligente SPC Horus 360º Infravermelhos Universal',19,30,5000);
INSERT INTO ComandoInfravermelho(nome, idModelo, idAplicacao) VALUES ('Comando Universal Infravermelho Smart',17,1);
INSERT INTO ComandoInfravermelho(nome, idModelo, idAplicacao) VALUES ('Comando Universal Inteligente C/Transformad Nedis',18,3);
INSERT INTO ComandoInfravermelho(nome, idModelo, idAplicacao) VALUES ('Comando Inteligente SPC Horus 360º Infravermelhos Universal',19,2);
INSERT INTO GatilhoAcao (idGatilho, nomeAcao) VALUES (1,'ligar luzes');
INSERT INTO GatilhoAcao (idGatilho, nomeAcao) VALUES (4,'ligar luzes');
INSERT INTO GatilhoAcao (idGatilho, nomeAcao) VALUES (2, 'ligar TV');
INSERT INTO GatilhoAcao (idGatilho, nomeAcao) VALUES (3, 'desligar ar-condicionado');
INSERT INTO DispositivoInfraComando VALUES (1,1);
INSERT INTO DispositivoInfraComando VALUES (1,3);
INSERT INTO DispositivoInfraComando VALUES (3,1);
INSERT INTO DispositivoInfraComando VALUES (2,2);
INSERT INTO GrupoDispositivoWiFi VALUES (1,2);
INSERT INTO GrupoDispositivoWiFi VALUES (1,1);
INSERT INTO GrupoDispositivoWiFi VALUES (4,3);
INSERT INTO GrupoDispositivoWiFi VALUES (5,3);
INSERT INTO GrupoDispositivoBluetooth VALUES (1,3);
INSERT INTO GrupoDispositivoBluetooth VALUES (1,4);
INSERT INTO GrupoDispositivoBluetooth VALUES (3,4);
INSERT INTO GrupoDispositivoBluetooth VALUES (5,2);
INSERT INTO GrupoDispositivoInfravermelho VALUES (1,1);
INSERT INTO GrupoDispositivoInfravermelho VALUES (3,1);
INSERT INTO GrupoDispositivoInfravermelho VALUES (5,2);
INSERT INTO GrupoDispositivoInfravermelho VALUES (4,3);
INSERT INTO DispositivoBluetoothAcaoAssistente(idDispositivo, nomeAcao , idAssistente) VALUES (1,'ligar luzes',3);
INSERT INTO DispositivoBluetoothAcaoAssistente(idDispositivo, nomeAcao , idAssistente) VALUES (1,'desligar luzes',3);
INSERT INTO DispositivoBluetoothAcaoAssistente(idDispositivo, nomeAcao , idAssistente) VALUES (4,'ligar TV',2);
INSERT INTO DispositivoBluetoothAcaoAssistente(idDispositivo, nomeAcao , idAssistente) VALUES (2,'ligar luzes',2);
INSERT INTO DispositivoBluetoothAcaoAssistente(idDispositivo, nomeAcao , idAssistente) VALUES (2,'desligar luzes',2);
INSERT INTO DispositivoWiFiAcaoAssistente(idDispositivo, nomeAcao, idAssistente) VALUES (1,'ligar TV',2);
INSERT INTO DispositivoWiFiAcaoAssistente(idDispositivo, nomeAcao, idAssistente) VALUES (5,'ligar ar-condicionado',3);
INSERT INTO DispositivoWiFiAcaoAssistente(idDispositivo, nomeAcao, idAssistente) VALUES (5,'desligar ar-condicionado',3);
INSERT INTO DispositivoWiFiAcaoAssistente(idDispositivo, nomeAcao, idAssistente) VALUES (2,'ligar TV',2);
INSERT INTO DispositivoInfravermelhoAcaoAssistente(idDispositivo, nomeAcao, idAssistente) VALUES (1,'ligar ar-condicionado',3);
INSERT INTO DispositivoInfravermelhoAcaoAssistente(idDispositivo, nomeAcao, idAssistente) VALUES (1,'desligar ar-condicionado',3);
INSERT INTO DispositivoInfravermelhoAcaoAssistente(idDispositivo, nomeAcao, idAssistente) VALUES (2,'ligar som',2);
INSERT INTO DispositivoInfravermelhoAcaoAssistente(idDispositivo, nomeAcao, idAssistente) VALUES (2,'aumentar volume',2);