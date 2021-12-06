PRAGMA foreign_keys = ON;
.read criar.sql
INSERT INTO Pais values('Portugal');
INSERT INTO Pais values('Brasil');
INSERT INTO Pais values('Estados Unidos');
INSERT INTO Pais values('França');
INSERT INTO Pais values('China');
INSERT INTO Idioma Values ('Português');
INSERT INTO Idioma Values ('Inglês') ;
INSERT INTO Idioma Values ('Espanhol');
INSERT INTO Idioma Values ('Françês');
INSERT INTO Idioma Values ('Chinês');
INSERT INTO Gatilho(condicao) values ('aproximação');
INSERT INTO Gatilho(condicao) values ('comando de voz');
INSERT INTO Gatilho(condicao) values ('temperatura');
INSERT INTO Gatilho(condicao) values ('movimento');
INSERT INTO Acao values ('ligar luzes');
INSERT INTO Acao values ('ligar ar-condicionado');
INSERT INTO Acao values ('ligar TV');.
INSERT INTO Acao Values ('desligar luzes');
INSERT INTO Acao Values ('desligar ar-condicionado');
INSERT INTO Marca(nome) Values ('Apple');
INSERT INTO Marca(nome) Values ('Microsoft');
INSERT INTO Marca(nome) Values ('Amazon');
INSERT INTO Marca(nome) Values ('Google');
INSERT INTO Marca(nome) Values ('Xiaomi');
INSERT INTO Marca(nome) Values ('Samsung');
INSERT INTO Marca(nome) Values ('Tuya');
INSERT INTO Marca(nome) Values ('LG');
INSERT INTO Morada Values(155, 'rua da areosa', 4200083, 'Portugal');
INSERT INTO Morada Values(130, 'rua da areosa', 4200089, 'Portugal');
INSERT INTO Morada Values(25, 'arquiteto lobão vital', 4815549, 'Portugal');
INSERT INTO Morada Values(166, 'rua hill de moraes', 60811760, 'Brasil');
INSERT INTO Morada Values (123, 'baker street', 07730, 'Estados Unidos');
INSERT INTO Casa(numero, endereço, orientaçãoSolar, qtdComodos) Values (155, 'rua da areosa', 0, 3);
INSERT INTO Casa(numero, endereço, orientaçãoSolar, qtdComodos) Values (130, 'rua da areosa', 90, 2);
INSERT INTO Casa(numero, endereço, orientaçãoSolar, qtdComodos) Values (25, 'arquiteto lobão vital', 180, 3);
INSERT INTO Casa(numero, endereço, orientaçãoSolar, qtdComodos) Values (166, 'rua hill de moraes', 90, 4);
INSERT INTO Grupo(nome, qtdDispositivosAssociados, idCasa) values('quarto', 4, 1);
INSERT INTO Grupo(nome, qtdDispositivosAssociados, idCasa) Values('cozinha', 6, 1);
INSERT INTO Grupo(nome, qtdDispositivosAssociados, idCasa) Values('sala', 9, 2);
INSERT INTO Grupo(nome, qtdDispositivosAssociados, idCasa) Values('cozinha', 3, 2);
INSERT INTO Grupo(nome, qtdDispositivosAssociados, idCasa) Values('casa de banho', 2, 1);
INSERT INTO Utilizador values(902854879, 'Eduardo Duarte', '2001-07-25', 'Brasil');
INSERT INTO Utilizador values(782459137, 'Igor Diniz', '2000-01-26', 'Brasil');
INSERT INTO Utilizador values(744584663, 'Ian Gomes', '2001-12-29', 'Brasil');
INSERT INTO Utilizador values(643375570, 'Pedro Sousa', '1990-05-05', 'Portugal');
INSERT INTO Utilizador values(908361726, 'Michael Jackson', '1958-08-29', 'Estados Unidos');
INSERT INTO Aplicacao(nome, versao, idioma) values('Amazon Alexa', '2.2.453031.0', 'Português');
INSERT INTO Aplicacao(nome, versao, idioma) values('Amazon Alexa', '2.2.448943.0', 'Inglês');
INSERT INTO Aplicacao(nome, versao, idioma) values('Google Home', '2.46.106', 'Espanhol');
INSERT INTO Aplicacao(nome, versao, idioma) values('Apple Siri', '8.3', 'Inglês');
INSERT INTO Aplicacao(nome, versao, idioma) values('Microsoft Cortana', '2.9.11.2037', 'Portugês');
INSERT INTO Aplicacao(nome, versao, idioma) values('Tuya Smart', '3.33.1', 'Portugês');
INSERT INTO Distrito values(1, 'Porto', 'Portugal');
INSERT INTO Distrito values(2, 'Braga', 'Portugal');
INSERT INTO Distrito values(3, 'Ceará', 'Brasil');
INSERT INTO Distrito values(4, 'Texas', 'Estados Unidos');
INSERT INTO Distrito values(5, 'Ilha de França', 'França');
INSERT INTO Concelho values(1, 'Trofa', 1);
INSERT INTO Concelho values(2, 'Guimarães', 2);
INSERT INTO Concelho values(3, 'Fortaleza', 3);
INSERT INTO Concelho values(4, 'Dallas', 4);
INSERT INTO Concelho values(5, 'Paris', 5);
INSERT INTO Freguesia (nome, idConcelho) values ('Muro', 1);
INSERT INTO Freguesia (nome, idConcelho) values ('conde', 2);
INSERT INTO Freguesia (nome, idConcelho) values ('Edson Queiroz', 3);
INSERT INTO Freguesia (nome, idConcelho) values ('Preston Hollow', 4);
INSERT INTO Freguesia (nome, idConcelho) values ('Les Halles', 5);
INSERT INTO Modelo values(1, 'Home Mini', 'Apple');
INSERT INTO Modelo values(2, 'Dot 3ª Geração', 'Amazon');
INSERT INTO Modelo values(3, 'Nest Mini Tiza', 'Google');
INSERT INTO Modelo values(4, 'Mi Smart Home Hub', 'Xiaomi');
INSERT INTO Modelo values(5, 'Cortana Home', 'Microsoft');
INSERT INTO Modelo values(6, 'Smart TV QLED 65"', 'Samsung');
INSERT INTO Modelo values(7, 'P1 SmartTV 4K UHD 43″', 'Xiaomi');
INSERT INTO Modelo values(8, 'Mi LED Smart Bulb Essential', 'Xiaomi');
INSERT INTO Modelo values(9, 'Nanoleaf Essentials A19 E27', 'Apple');
INSERT INTO Modelo values(10, 'Interruptor Táctil Duplo Smart Wifi Modern', 'Google');
INSERT INTO Modelo values(11, 'Sensor Smart WiFi Detecção Abertura de Portas e Janelas', 'Google');
INSERT INTO Modelo values(12, 'LG ThinQ Ar-Condicionado', 'LG');
INSERT INTO Modelo values(13, 'LG ThinQ Ar-Condicionado', 'LG');
INSERT INTO AssistenteVirtual values(1, 'Google Assistant', 'Português', 5, 1, 3, 3);
INSERT INTO AssistenteVirtual values(2, 'Google Assistant', 'Inglês', 7, 2, 3, 3);
INSERT INTO AssistenteVirtual values(3, 'Alexa', 'Inglês', 10, 3, 2, 2);
INSERT INTO AssistenteVirtual values(4, 'Apple HomePod', 'Chinês', 12, 4, 1, 4);
INSERT INTO CasaUtilizador values(1, 902854879);
INSERT INTO CasaUtilizador values(1, 782459137);
INSERT INTO CasaUtilizador values(2, 744584663);
INSERT INTO CasaUtilizador values(2, 908361726);
INSERT INTO CasaUtilizador values(3, 643375570);
INSERT INTO CasaUtilizador values(4, 643375570);
INSERT INTO TipoUtilizador(nif,idAplicacao) values(902854879, 2);
INSERT INTO TipoUtilizador(nif,idAplicacao) values(643375570, 2)
INSERT INTO TipoUtilizador(nif,idAplicacao) values(782459137, 1)
INSERT INTO TipoUtilizador(nif,idAplicacao) values(908361726, 4)
INSERT INTO TipoUtilizador values(744584663, 2, 1);
INSERT INTO EspecificacoesDispositivoWiFi(nome,idModelo,alcance,velocidadeMax,frequencia) values ('TV',6, 10, 100, 60);
INSERT INTO EspecificacoesDispositivoWiFi(nome,idModelo,alcance,velocidadeMax,frequencia) values ('TV',7, 12, 200, 60);
INSERT INTO EspecificacoesDispositivoWiFi(nome,idModelo,alcance,frequencia) values ('Interruptor',10, 8, 60);
INSERT INTO EspecificacoesDispositivoWiFi(nome,idModelo,alcance,frequencia) values ('Sensor',11, 30, 50);
INSERT INTO DispositivoWiFi(nome,idModelo) values('TV',6);
INSERT INTO DispositivoWiFi(nome,idModelo) values('TV',6);
INSERT INTO DispositivoWiFi(nome,idModelo) values('TV',7);
INSERT INTO DispositivoWIFI(nome,idModelo) values('Interruptor',10);
INSERT INTO DispositivoWIFI(nome,idModelo) values('Sensor',11);
INSERT INTO EspecificacoesDispositivoInfravermelho(nome, idModelo ,frequencia) values('Ar-Condicionado',12,2450);
INSERT INTO EspecificacoesDispositivoInfravermelho(nome, idModelo ,frequencia) values('Caixa de som',12,2450);
INSERT INTO DispositivoBluetooth(nome,idModelo,idAssistente) values('Lâmpada',8,3);
INSERT INTO DispositivoBluetooth(nome,idModelo,idAssistente) values('Lâmpada',9,4);

