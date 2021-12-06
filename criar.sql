/*TABELA Casa:*/
DROP TABLE IF EXISTS Casa;
CREATE TABLE Casa
(
  idCasa INTEGER NOT NULL,
  numero INTEGER NOT NULL,
  endereco TEXT NOT NULL,
  orientacaoSolar CHAR(2) NOT NULL,
  qtdComodos INTEGER NOT NULL,
  CONSTRAINT Casa_PK PRIMARY KEY (idCasa)
);

/*TABELA Morada:*/
DROP TABLE IF EXISTS Morada;
CREATE TABLE Morada
(
  numero INTEGER NOT NULL,
  endereco TEXT NOT NULL,
  codigoPostal INTEGER NOT NULL,
  nomePais TEXT NOT NULL,
  CONSTRAINT Morada_PK PRIMARY KEY (numero, endereco),
  CONSTRAINT Morada_nomePais_FK1 FOREIGN KEY (nomePais) REFERENCES Pais(Pais_PK)
);

/*TABELA Grupo:*/

DROP TABLE IF EXISTS Grupo;
CREATE TABLE Grupo
(
  idGrupo INTEGER NOT NULL,
  nome TEXT NOT NULL,
  qtdDispositivosAssociados INTEGER NOT NULL,
  idCasa INTEGER NOT NULL,
  CONSTRAINT Grupo_PK PRIMARY KEY (idGrupo),
  CONSTRAINT Grupo_idCasa_FK1 FOREIGN KEY (idCasa) REFERENCES Casa(Casa_PK)
);

/*TABELA GrupoDispositivoBluetooth:*/

DROP TABLE IF EXISTS DispositivoBluetooth;
CREATE TABLE GrupoDispositivoBluetooth
(
  idGrupo INTEGER NOT NULL,
  idDispositivo INTEGER NOT NULL,
  CONSTRAINT GrupoDispositivoBluetooth_PK PRIMARY KEY (idGrupo, idDispositivo),
  CONSTRAINT GrupoDispositivoBluetooth_nome_FK1 FOREIGN KEY (idGrupo) REFERENCES Grupo(Grupo_PK),
  CONSTRAINT GrupoDispositivoBluetooth_idDispositivo_FK2 FOREIGN KEY (idDispositivo) REFERENCES DispositivoBluetooth(DispositivoBluetooth_PK)
);

/*TABELA GrupoDispositivoWifi:*/
DROP TABLE IF EXISTS GrupoDispositivoWifi;
CREATE TABLE GrupoDispositivoWifi
(
  idGrupo INTEGER NOT NULL,
  idDispositivo INTEGER NOT NULL,
  CONSTRAINT GrupoDispositivoWifi_PK PRIMARY KEY (idGrupo, idDispositivo),
  CONSTRAINT GrupoDispositivoWifi_nome_FK1 FOREIGN KEY (idGrupo) REFERENCES Grupo(Grupo_PK),
  CONSTRAINT GrupoDispositivoWifi_idDispositivo_FK2 FOREIGN KEY (idDispositivo) REFERENCES DispositivoWifi(DispositivoWifi_PK)
);

/*TABELA GrupoDispositivoInfravermelho:*/
DROP TABLE IF EXISTS GrupoDispositivoInfravermelho;
CREATE TABLE GrupoDispositivoInfravermelho
(
  idGrupo INTEGER NOT NULL,
  idDispositivo INTEGER NOT NULL,
  CONSTRAINT GrupoDispositivoInfravermelho_PK PRIMARY KEY (idGrupo, idDispositivo),
  CONSTRAINT GrupoDispositivoInfravermelho_nome_FK1 FOREIGN KEY (idGrupo) REFERENCES Grupo(Grupo_PK),
  CONSTRAINT GrupoDispositivoInfravermelho_idDispositivo_FK2 FOREIGN KEY (idDispositivo) REFERENCES DispositivoInfravermelho(DispositivoInfravermelho_PK)
);


/*TABELA CasaUtilizador:*/
DROP TABLE IF EXISTS CasaUtilizador;
CREATE TABLE CasaUtilizador
(
  idCasa INTEGER NOT NULL,
  nif INTEGER NOT NULL,
  CONSTRAINT CasaUtilizador_PK PRIMARY KEY (idCasa, nif),
  CONSTRAINT CasaUtilizador_idCasa_FK1 FOREIGN KEY (idCasa) REFERENCES Casa(Casa_PK),
  CONSTRAINT CasaUtilizador_nif_FK2 FOREIGN KEY (nif) REFERENCES Utilizador(Utilizador_PK)
);

/*TABELA Pais:*/
DROP TABLE IF EXISTS Pais;
CREATE TABLE Pais
(
  nome TEXT NOT NULL,
  CONSTRAINT Pais_PK PRIMARY KEY (nome)
);

/*TABELA Distrito:*/
DROP TABLE IF EXISTS Distrito;
CREATE TABLE Distrito
(
  nome TEXT NOT NULL,
  nomePais TEXT NOT NULL,
  idDistrito INTEGER NOT NULL,
  CONSTRAINT Distrito_PK PRIMARY KEY (idDistrito),
  CONSTRAINT Distrito_nomePais_FK1 FOREIGN KEY (nomePais) REFERENCES Pais(Pais_PK)
);

/*TABELA Concelho:*/
DROP TABLE IF EXISTS Concelho;
CREATE TABLE Concelho
(
  nome TEXT NOT NULL,
  idConcelho INTEGER NOT NULL,
  idDistrito INTEGER NOT NULL,
  CONSTRAINT Concelho_PK PRIMARY KEY (idConcelho),
  CONSTRAINT Concelho_idDistrito_FK1 FOREIGN KEY (idDistrito) REFERENCES Distrito(Distrito_PK)
);

/*TABELA Freguesia:*/
DROP TABLE IF EXISTS Freguesia;
CREATE TABLE Freguesia
(
  nome TEXT NOT NULL,
  idConcelho INTEGER NOT NULL,
  idFreguesia INTEGER NOT NULL,
  CONSTRAINT Freguesia_PK PRIMARY KEY (idConcelho),
  CONSTRAINT Freguesia_idConcelho_FK1 FOREIGN KEY (idConcelho) REFERENCES Concelho(Concelho_PK)
);

/*TABELA Utilizador :*/
DROP TABLE IF EXISTS Utilizador;
CREATE TABLE Utilizador
(
  nome NAME NOT NULL,
  nif INTEGER NOT NULL,
  dob DATE NOT NULL,
  nacionalidade TEXT NOT NULL,
  CONSTRAINT Utilizador_PK PRIMARY KEY (nif),
  CONSTRAINT Utilizador_nacionalidade_FK1 FOREIGN KEY (nacionalidade) REFERENCES Pais(Pais_PK)
);


/*TABELA TipoUtilizador:*/
DROP TABLE IF EXISTS TipoUtilizador;
CREATE TABLE TipoUtilizador
(
  nif INTEGER NOT NULL,
  idAplicacao INTEGER NOT NULL,
  principal BOOL NOT NULL,
  CONSTRAINT TipoUtilizador_PK PRIMARY KEY (nif),
  CONSTRAINT TipoUtilizador_nif_FK1 FOREIGN KEY (nif) REFERENCES Utilizador(Utilizador_PK),
  CONSTRAINT TipoUtilizador_idAplicacao_FK2 FOREIGN KEY (idAplicacao) REFERENCES Aplicacao(Aplicacao_PK)
);

/*TABELA Idioma:*/
DROP TABLE IF EXISTS Idioma;
CREATE TABLE Idioma
(
  nome TEXT NOT NULL,
  CONSTRAINT Idioma_PK PRIMARY KEY (nome)
);

/*Tabela Aplicacao:*/
DROP TABLE IF EXISTS Aplicacao;
CREATE TABLE Aplicacao
(
  idAplicacao INTEGER NOT NULL,
  nome NAME NOT NULL,
  versao TEXT NOT NULL,
  idioma TEXT NOT NULL,
  CONSTRAINT Aplicacao_PK PRIMARY KEY (idAplicacao),
  CONSTRAINT Aplicacao_idioma_FK1 FOREIGN KEY (idioma) REFERENCES Idioma(Idioma_PK)
);

/*TABELA AssitenteVirtual :*/
DROP TABLE IF EXISTS AssistanteVirtual;
CREATE TABLE AssistenteVirtual
(
  idAssistente INTEGER NOT NULL,
  nome TEXT NOT NULL,
  idioma TEXT NOT NULL,
  idCasa INTEGER NOT NULL,
  idModelo INTEGER NOT NULL,
  idAplicacao INTEGER NOT NULL,
  qtdDispositivosAssociados INTEGER NOT NULL,
  CONSTRAINT AssitenteVirtual_PK PRIMARY KEY (idAssistente),
  CONSTRAINT AssitenteVirtual_idioma_FK1 FOREIGN KEY (idioma) REFERENCES Idioma(Idioma_PK),
  CONSTRAINT AssitenteVirtual_idCasa_FK2 FOREIGN KEY (idCasa) REFERENCES Casa(Casa_PK),
  CONSTRAINT AssitenteVirtual_idModelo_FK3 FOREIGN KEY (idMolelo) REFERENCES Modelo(Modelo_PK),
  CONSTRAINT AssitenteVirtual_idAplicacao_FK4 FOREIGN KEY (idAplicacao) REFERENCES Aplicacao(Aplicacao_PK)
);

/*TABELA ComandoInfravermelho :*/
DROP TABLE IF EXISTS ComandoInfravermelho;
CREATE TABLE ComandoInfravermelho
(
  idComando INTEGER NOT NULL,
  nome TEXT NOT NULL,
  idModelo INTEGER NOT NULL,
  idAplicacao INTEGER NOT NULL,
  CONSTRAINT ComandoInfravermelho_PK PRIMARY KEY (idComando),
  CONSTRAINT ComandoInfravermelho_idModelo_FK1 FOREIGN KEY (idMolelo) REFERENCES Modelo(Modelo_PK),
  CONSTRAINT ComandoInfravermelho_idAplicacao_FK2 FOREIGN KEY (idAplicacao) REFERENCES Aplicacao(Aplicacao_PK)
);

/*TABELA EspecificacoesComandoInfravermelho :*/
DROP TABLE IF EXISTS EspecificacoesComandoInfravermelho;
CREATE TABLE EspecificacoesComandoInfravermelho
(
  nome TEXT NOT NULL,
  idModelo INTEGER NOT NULL,
  alcance FLOAT NOT NULL,
  frequencia FLOAT NOT NULL,
  CONSTRAINT EspecificacoesComandoInfravermelho_PK PRIMARY KEY (nome, idModelo),
  CONSTRAINT EspecificacoesComandoInfravermelho_idModelo_FK1 FOREIGN KEY (idMolelo) REFERENCES Modelo(Modelo_PK)
);

/*TABELA Gatilho :*/
DROP TABLE IF EXISTS Gatilho;
CREATE TABLE Gatilho
(
  idGatilho INTEGER NOT NULL,
  condicao TEXT NOT NULL,
  CONSTRAINT Gatilho_PK PRIMARY KEY (idGatilho)
);

/*TABELA Acao:*/
DROP TABLE IF EXISTS Acao;
CREATE TABLE Acao
(
  nome TEXT NOT NULL,
  CONSTRAINT Acao_PK PRIMARY KEY (nome)
);



/*Tabela GatilhoAcao:*/
DROP TABLE IF EXISTS GatilhoAplicacao;
CREATE TABLE GatilhoAplicacao
(
  idGatilho INTEGER NOT NULL,
  nomeAcao TEXT NOT NULL,
  CONSTRAINT GatilhoAcao_PK PRIMARY KEY (idGatilho, nomeAcao),
  CONSTRAINT GatilhoAcao_idGatilho_FK1 FOREIGN KEY (idGatilho) REFERENCES Gatilho(Gatilho_PK),
  CONSTRAINT GatilhoAcao_nomeAcao_FK2 FOREIGN KEY (nomeAcao) REFERENCES Acao(Acao_PK)
);

/*TABELA Modelo:*/
DROP TABLE IF EXISTS Modelo;
CREATE TABLE Modelo
(
  idModelo INTEGER NOT NULL,
  nome TEXT NOT NULL,
  idMarca INTEGER NOT NULL,
  CONSTRAINT Modelo_PK PRIMARY KEY (idModelo),
  CONSTRAINT Modelo_idMarca_FK1 FOREIGN KEY (idMarca) REFERENCES Marca(Marca_PK)
);

/*TABELA Marca:*/
DROP TABLE IF EXISTS Marca;
CREATE TABLE Marca
(
  nome TEXT NOT NULL,
  idMarca INTEGER NOT NULL,
  CONSTRAINT Marca_PK PRIMARY KEY (idMarca)
);

/*Tabela DispositivoBluetoothAcaoAssistente:*/
DROP TABLE IF EXISTS DispositivoBluetoothAcaoAssistente;
CREATE TABLE DispositivoBluetoothAcaoAssistente
(
  idDispositivo INTEGER NOT NULL,
  nomeAcao TEXT NOT NULL,
  idAssistente INTEGER NOT NULL,
  CONSTRAINT DispositivoBluetoothAcaoAssistente_PK PRIMARY KEY (idDispositivo, nomeAcao),
  CONSTRAINT DispositivoBluetoothAcaoAssistente_idDispositivo_FK1 FOREIGN KEY (idDispositivo) REFERENCES DispositivoBluetooth(DispositivoBluetooth_PK),
  CONSTRAINT DispositivoBluetoothAcaoAssistente_nomeAcao_FK2 FOREIGN KEY (nomeAcao) REFERENCES Acao(Acao_PK),
  CONSTRAINT DispositivoBluetoothAcaoAssistente_idAssistente_FK3 FOREIGN KEY (idAssistente) REFERENCES AssistenteVirtual(AssistenteVirtual_PK)
);


/*Tabela DispositivoWiFiAcaoAssistente:*/
DROP TABLE IF EXISTS DispositivoWiFiAcaoAssistente;
CREATE TABLE DispositivoWiFiAcaoAssistente
(
  idDispositivo INTEGER NOT NULL,
  nomeAcao TEXT NOT NULL,
  idAssistente INTEGER NOT NULL,
  CONSTRAINT DispositivoWiFiAcaoAssistente_PK PRIMARY KEY (idDispositivo, nomeAcao),
  CONSTRAINT DispositivoWiFiAcaoAssistente_idDispositivo_FK1 FOREIGN KEY (idDispositivo) REFERENCES DispositivoWiFi(DispositivoWiFi_PK),
  CONSTRAINT DispositivoWiFiAcaoAssistente_nomeAcao_FK2 FOREIGN KEY (nomeAcao) REFERENCES Acao(Acao_PK),
  CONSTRAINT DispositivoWiFiAcaoAssistente_idAssistente_FK3 FOREIGN KEY (idAssistente) REFERENCES AssistenteVirtual(AssistenteVirtual_PK)
);

/*Tabela DispositivoInfravermelhoAcaoAssistente:*/
DROP TABLE IF EXISTS DispositivoInfravermelhoAcaoAssistente;
CREATE TABLE DispositivoInfravermelhoAcaoAssistente
(
  idDispositivo INTEGER NOT NULL,
  nomeAcao TEXT NOT NULL,
  idAssistente INTEGER NOT NULL,
  CONSTRAINT DispositivoInfravermelhoAcaoAssistente_PK PRIMARY KEY (idDispositivo, nomeAcao),
  CONSTRAINT DispositivoInfravermelhoAcaoAssistente_idDispositivo_FK1 FOREIGN KEY (idDispositivo) REFERENCES DispositivoInfravermelho(DispositivoInfravermelho_PK),
  CONSTRAINT DispositivoInfravermelhoAcaoAssistente_nomeAcao_FK2 FOREIGN KEY (nomeAcao) REFERENCES Acao(Acao_PK),
  CONSTRAINT DispositivoInfravermelhoAcaoAssistente_idAssistente_FK3 FOREIGN KEY (idAssistente) REFERENCES AssistenteVirtual(AssistenteVirtual_PK)
);


/*Tabela WifiAplicacao:*/
DROP TABLE IF EXISTS WifiAplicacao;
CREATE TABLE WifiAplicacao
(
  idDispositivo INTEGER NOT NULL,
  idAplicacao INTEGER NOT NULL,
  CONSTRAINT WifiAplicacao_PK PRIMARY KEY (idGatilho, nomeAcao),
  CONSTRAINT WifiAplicacao_idDispositivo_FK1 FOREIGN KEY (idDispositivo) REFERENCES DispositivoWIFI(DispositivoWIFI_PK),
  CONSTRAINT WifiAplicacao_idAplicacao_FK2 FOREIGN KEY (idAplicacao) REFERENCES Aplicacao(Aplicacao_PK)
);

/*Tabela DispositivoBluetooth:*/
DROP TABLE IF EXISTS DispositivoBluetooth;
CREATE TABLE DispositivoBluetooth
(
  idDispositivo INTEGER NOT NULL,
  nome TEXT NOT NULL,
  idModelo INTEGER NOT NULL,
  idAssistente INTEGER NOT NULL,
  CONSTRAINT DispositivoBluetooth_PK PRIMARY KEY (idDispositivo),
  CONSTRAINT DispositivoBluetooth_idModelo_FK1 FOREIGN KEY (idMolelo) REFERENCES Modelo(Modelo_PK),
  CONSTRAINT DispositivoBluetooth_idAssistente_FK2 FOREIGN KEY (idAssistente) REFERENCES AssistenteVirtual(AssistenteVirtual_PK)
);

/*Tabela DispositivoWiFi:*/
DROP TABLE IF EXISTS DispositivoWiFi;
CREATE TABLE DispositivoWiFi
(
  idDispositivo INTEGER NOT NULL,
  nome TEXT NOT NULL,
  idModelo INTEGER NOT NULL,
  CONSTRAINT DispositivoWiFi_PK PRIMARY KEY (idDispositivo),
  CONSTRAINT DispositivoWiFi_idModelo_FK1 FOREIGN KEY (idMolelo) REFERENCES Modelo(Modelo_PK)
);

/*Tabela DispositivoInfravermelho:*/
DROP TABLE IF EXISTS DispositivoInfravermelho;
CREATE TABLE DispositivoInfravermelho
(
  idDispositivo INTEGER NOT NULL,
  nome TEXT NOT NULL,
  idModelo INTEGER NOT NULL,
  CONSTRAINT DispositivoInfravermelho_PK PRIMARY KEY (idDispositivo),
  CONSTRAINT DispositivoInfravermelho_idModelo_FK1 FOREIGN KEY (idMolelo) REFERENCES Modelo(Modelo_PK)
);

/*Tabela EspecificacoesDispositivoBluetooth:*/
DROP TABLE IF EXISTS EspecificacoesDispositivoBluetooth;
CREATE TABLE EspecificacoesDispositivoBluetooth
(
  nome TEXT NOT NULL,
  idModelo INTEGER NOT NULL,
  versaoBluetooth FLOAT NOT NULL,
  alcance FLOAT NOT NULL,
  velocidadeMax FLOAT NOT NULL,
  CONSTRAINT EspecificacoesDispositivoBluetooth_PK PRIMARY KEY (nome, idModelo),
  CONSTRAINT EspecificacoesDispositivoBluetooth_idModelo_FK1 FOREIGN KEY (idMolelo) REFERENCES Modelo(Modelo_PK),
);

/*Tabela EspecificacoesDispositivosWifi:*/
DROP TABLE IF EXISTS EspecificacoesDispositivosWifi;
CREATE TABLE EspecificacoesDispositivoWiFi
(
  nome TEXT NOT NULL,
  idModelo INTEGER NOT NULL,
  frequencia FLOAT NOT NULL,
  alcance FLOAT NOT NULL,
  velocidadeMax FLOAT NOT NULL,
  CONSTRAINT EspecificacoesDispositivoWiFi_PK PRIMARY KEY (nome, idModelo),
  CONSTRAINT EspecificacoesDispositivoWiFi_idModelo_FK1 FOREIGN KEY (idMolelo) REFERENCES Modelo(Modelo_PK),
);

/*Tabela EspecificacoesDispositivoInfravermelho:*/
DROP TABLE IF EXISTS EspecificacoesDispositivoInfravermelho;
CREATE TABLE EspecificacoesDispositivoInfravermelho
(
  nome TEXT NOT NULL,
  idModelo INTEGER NOT NULL,
  frequencia FLOAT NOT NULL,
  CONSTRAINT EspecificacoesDispositivoWiFi_PK PRIMARY KEY (nome, idModelo),
  CONSTRAINT EspecificacoesDispositivoWiFi_idModelo_FK1 FOREIGN KEY (idMolelo) REFERENCES Modelo(Modelo_PK),
);

/*Tabela DispositivoInfraComando:*/
DROP TABLE IF EXISTS DispositivoInfraComando;
CREATE TABLE DispositivoInfraComando
(
  idDispositivo INTEGER NOT NULL,
  idComando INTEGER NOT NULL,
  CONSTRAINT DispositivoInfraComando_PK PRIMARY KEY (idDispositivo),
  CONSTRAINT DispositivoInfraComando_idDispositivo_FK1 FOREIGN KEY (idDispositivo) REFERENCES DispositivoInfravermelho(DispositivoInfravermelho_PK),
  CONSTRAINT DispositivoInfraComando_idComando_FK2 FOREIGN KEY (idComando) REFERENCES ComandoInfravermelho(ComandoInfravermelho_PK)
);
