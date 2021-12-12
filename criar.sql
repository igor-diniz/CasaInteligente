--TABELA Pais:
DROP TABLE IF EXISTS Pais;
CREATE TABLE Pais
(
  nome TEXT, 
  CONSTRAINT Pais_PK PRIMARY KEY (nome)
);

--TABELA Distrito:
DROP TABLE IF EXISTS Distrito;
CREATE TABLE Distrito
(
  idDistrito INTEGER, 
  nome TEXT NOT NULL, 
  nomePais TEXT NOT NULL, 
  CONSTRAINT Distrito_PK PRIMARY KEY (idDistrito), 
  CONSTRAINT Distrito_nomePais_FK1 FOREIGN KEY (nomePais) REFERENCES Pais(nome) 
);

--TABELA Concelho:
DROP TABLE IF EXISTS Concelho;
CREATE TABLE Concelho
(
  idConcelho INTEGER, 
  nome TEXT NOT NULL, 
  idDistrito INTEGER NOT NULL, 
  CONSTRAINT Concelho_PK PRIMARY KEY (idConcelho), 
  CONSTRAINT Concelho_idDistrito_FK1 FOREIGN KEY (idDistrito) REFERENCES Distrito(idDistrito)
);

--TABELA Freguesia:
DROP TABLE IF EXISTS Freguesia;
CREATE TABLE Freguesia
(
  idFreguesia INTEGER, 
  nome TEXT NOT NULL, 
  idConcelho INTEGER NOT NULL, 
  CONSTRAINT Freguesia_PK PRIMARY KEY (idFreguesia), 
  CONSTRAINT Freguesia_idConcelho_FK1 FOREIGN KEY (idConcelho) REFERENCES Concelho(idConcelho) 
);

--TABELA CodigoPostal:
DROP TABLE IF EXISTS CodigoPostal;
CREATE TABLE CodigoPostal
(
  codigoPostal TEXT, --Existem países que possuem letras no código postal (India, Irlanda ...)
  nomePais TEXT NOT NULL, 
  CONSTRAINT CodigoPostal_PK PRIMARY KEY (codigoPostal), 
  CONSTRAINT CodigoPostal_nomePais_FK1 FOREIGN KEY (nomePais) REFERENCES Pais(nome) 
);

--TABELA Morada:
DROP TABLE IF EXISTS Morada;
CREATE TABLE Morada
(
  endereco TEXT, 
  numero INTEGER, 
  codigoPostal TEXT NOT NULL, 
  CONSTRAINT Morada_PK PRIMARY KEY (endereco, numero), 
  CONSTRAINT Morada_CodigoPostal_FK1 FOREIGN KEY (codigoPostal) REFERENCES CodigoPostal(codigoPostal)
);

--TABELA Casa:
DROP TABLE IF EXISTS Casa;
CREATE TABLE Casa
(
  idCasa INTEGER, 
  endereco TEXT NOT NULL, 
  numero INTEGER NOT NULL, 
  orientacaoSolar CHAR(2) NOT NULL, 
  qtdComodos INTEGER NOT NULL, 
  CONSTRAINT Casa_PK PRIMARY KEY (idCasa), 
  CONSTRAINT Casa_Morada_FK1 FOREIGN KEY (endereco, numero) REFERENCES Morada(endereco, numero)
);

--TABELA Utilizador :
DROP TABLE IF EXISTS Utilizador;
CREATE TABLE Utilizador
(
  nif INTEGER, 
  nome TEXT NOT NULL, 
  dob DATE NOT NULL, 
  nacionalidade TEXT NOT NULL, 
  CONSTRAINT Utilizador_PK PRIMARY KEY (nif), 
  CONSTRAINT Utilizador_nacionalidade_FK1 FOREIGN KEY (nacionalidade) REFERENCES Pais(nome) 
);

--TABELA CasaUtilizador:
DROP TABLE IF EXISTS CasaUtilizador;
CREATE TABLE CasaUtilizador
(
  idCasa INTEGER NOT NULL, 
  nif INTEGER NOT NULL, 
  CONSTRAINT CasaUtilizador_PK PRIMARY KEY (idCasa, nif), 
  CONSTRAINT CasaUtilizador_idCasa_FK1 FOREIGN KEY (idCasa) REFERENCES Casa(idCasa) 
  ON DELETE CASCADE, 
  CONSTRAINT CasaUtilizador_nif_FK2 FOREIGN KEY (nif) REFERENCES Utilizador(nif) 
  ON DELETE CASCADE
);

--TABELA Idioma:
DROP TABLE IF EXISTS Idioma;
CREATE TABLE Idioma
(
  nome TEXT, 
  CONSTRAINT Idioma_PK PRIMARY KEY (nome)
);

--TABELA Aplicacao:
DROP TABLE IF EXISTS Aplicacao;
CREATE TABLE Aplicacao
(
  idAplicacao INTEGER, 
  nome TEXT NOT NULL, 
  versao TEXT NOT NULL, 
  idioma TEXT NOT NULL, 
  CONSTRAINT Aplicacao_PK PRIMARY KEY (idAplicacao), 
  CONSTRAINT Aplicacao_idioma_FK1 FOREIGN KEY (idioma) REFERENCES Idioma(nome) 
);

--TABELA TipoUtilizador:
DROP TABLE IF EXISTS TipoUtilizador;
CREATE TABLE TipoUtilizador
(
  nif INTEGER NOT NULL, 
  idAplicacao INTEGER NOT NULL, 
  principal BOOLEAN DEFAULT 0, 
  CONSTRAINT TipoUtilizador_PK PRIMARY KEY (nif, idAplicacao), 
  CONSTRAINT TipoUtilizador_nif_FK1 FOREIGN KEY (nif) REFERENCES Utilizador(nif) 
  ON DELETE CASCADE, 
  CONSTRAINT TipoUtilizador_idAplicacao_FK2 FOREIGN KEY (idAplicacao) REFERENCES Aplicacao(idAplicacao) 
);

--TABELA Acao:
DROP TABLE IF EXISTS Acao;
CREATE TABLE Acao
(
  nome TEXT, 
  CONSTRAINT Acao_PK PRIMARY KEY (nome)
);

--TABELA Gatilho :
DROP TABLE IF EXISTS Gatilho;
CREATE TABLE Gatilho
(
  idGatilho INTEGER, 
  condicao TEXT NOT NULL, 
  CONSTRAINT Gatilho_PK PRIMARY KEY (idGatilho)
);

--TABELA GatilhoAcao:
DROP TABLE IF EXISTS GatilhoAcao;
CREATE TABLE GatilhoAcao
(
  idGatilho INTEGER NOT NULL, 
  nomeAcao TEXT NOT NULL, 
  CONSTRAINT GatilhoAcao_PK PRIMARY KEY (idGatilho, nomeAcao), 
  CONSTRAINT GatilhoAcao_idGatilho_FK1 FOREIGN KEY (idGatilho) REFERENCES Gatilho(idGatilho) 
  ON DELETE CASCADE, 
  CONSTRAINT GatilhoAcao_nomeAcao_FK2 FOREIGN KEY (nomeAcao) REFERENCES Acao(nome) 
  ON DELETE CASCADE ON UPDATE CASCADE
);

--TABELA Marca:
DROP TABLE IF EXISTS Marca;
CREATE TABLE Marca
(
  idMarca INTEGER, 
  nome TEXT NOT NULL, 
  CONSTRAINT Marca_PK PRIMARY KEY (idMarca)
);

--TABELA Modelo:
DROP TABLE IF EXISTS Modelo;
CREATE TABLE Modelo
(
  idModelo INTEGER, 
  nome TEXT NOT NULL, 
  idMarca INTEGER NOT NULL, 
  CONSTRAINT Modelo_PK PRIMARY KEY (idModelo), 
  CONSTRAINT Modelo_idMarca_FK1 FOREIGN KEY (idMarca) REFERENCES Marca(idMarca) 
  
);

--TABELA AssitenteVirtual :
DROP TABLE IF EXISTS AssistenteVirtual;
CREATE TABLE AssistenteVirtual
(
  idAssistente INTEGER, 
  nome TEXT NOT NULL, 
  idioma TEXT NOT NULL, 
  qtdDispositivosAssociados INTEGER NOT NULL, 
  idCasa INTEGER UNIQUE NOT NULL, 
  idModelo INTEGER NOT NULL, 
  idAplicacao INTEGER UNIQUE NOT NULL, 
  CONSTRAINT AssitenteVirtual_PK PRIMARY KEY (idAssistente), 
  CONSTRAINT AssitenteVirtual_idioma_FK1 FOREIGN KEY (idioma) REFERENCES Idioma(nome), 
  CONSTRAINT AssitenteVirtual_idCasa_FK2 FOREIGN KEY (idCasa) REFERENCES Casa(idCasa) 
  ON DELETE CASCADE, 
  CONSTRAINT AssitenteVirtual_idModelo_FK3 FOREIGN KEY (idModelo) REFERENCES Modelo(idModelo), 
  CONSTRAINT AssitenteVirtual_idAplicacao_FK4 FOREIGN KEY (idAplicacao) REFERENCES Aplicacao(idAplicacao) 
);

--TABELA EspecificacoesComandoInfravermelho :
DROP TABLE IF EXISTS EspecificacoesComandoInfravermelho;
CREATE TABLE EspecificacoesComandoInfravermelho
(
  nome TEXT NOT NULL, 
  idModelo INTEGER NOT NULL, 
  alcance FLOAT NOT NULL CHECK (alcance >= 0), 
  frequencia FLOAT NOT NULL CHECK (frequencia >= 0), 
  CONSTRAINT EspecificacoesComandoInfravermelho_PK PRIMARY KEY (nome, idModelo), 
  CONSTRAINT EspecificacoesComandoInfravermelho_idModelo_FK1 FOREIGN KEY (idModelo) REFERENCES Modelo(idModelo) 
);

--TABELA ComandoInfravermelho :
DROP TABLE IF EXISTS ComandoInfravermelho;
CREATE TABLE ComandoInfravermelho
(
  idComando INTEGER, 
  nome TEXT NOT NULL, 
  idModelo INTEGER NOT NULL, 
  idAplicacao INTEGER NOT NULL, 
  CONSTRAINT ComandoInfravermelho_PK PRIMARY KEY (idComando), 
  CONSTRAINT ComandoInfravermelho_idModelo_FK1 FOREIGN KEY (idModelo) REFERENCES Modelo(idModelo), 
  CONSTRAINT ComandoInfravermelho_idAplicacao_FK2 FOREIGN KEY (idAplicacao) REFERENCES Aplicacao(idAplicacao), 
  CONSTRAINT ComandoInfravermelho_Especificacoes_FK3 FOREIGN KEY (nome, idModelo) REFERENCES EspecificacoesComandoInfravermelho(nome, idModelo)
);

--TABELA EspecificacoesDispositivoBluetooth:
DROP TABLE IF EXISTS EspecificacoesDispositivoBluetooth;
CREATE TABLE EspecificacoesDispositivoBluetooth
(
  nome TEXT NOT NULL, 
  idModelo INTEGER NOT NULL, 
  versaoBluetooth TEXT NOT NULL, 
  alcance FLOAT NOT NULL, 
  velocidadeMax FLOAT, 
  CONSTRAINT EspecificacoesDispositivoBluetooth_PK PRIMARY KEY (nome, idModelo), 
  CONSTRAINT EspecificacoesDispositivoBluetooth_idModelo_FK1 FOREIGN KEY (idModelo) REFERENCES Modelo(idModelo)
);

--TABELA DispositivoBluetooth:
DROP TABLE IF EXISTS DispositivoBluetooth;
CREATE TABLE DispositivoBluetooth
(
  idDispositivo INTEGER, 
  nome TEXT NOT NULL, 
  idModelo INTEGER NOT NULL, 
  idAssistente INTEGER NOT NULL, 
  CONSTRAINT DispositivoBluetooth_PK PRIMARY KEY (idDispositivo), 
  CONSTRAINT DispositivoBluetooth_idModelo_FK1 FOREIGN KEY (idModelo) REFERENCES Modelo(idModelo), 
  CONSTRAINT DispositivoBluetooth_idAssistente_FK2 FOREIGN KEY (idAssistente) REFERENCES AssistenteVirtual(idAssistente), 
  CONSTRAINT DispositivoBluetooth_Especificacoes_FK3 FOREIGN KEY (nome, idModelo) REFERENCES EspecificacoesDispositivoBluetooth(nome, idModelo)
);

--TABELA EspecificacoesDispositivoWiFi:
DROP TABLE IF EXISTS EspecificacoesDispositivoWiFi;
CREATE TABLE EspecificacoesDispositivoWiFi
(
  nome TEXT NOT NULL, 
  idModelo INTEGER NOT NULL, 
  alcance FLOAT NOT NULL, 
  velocidadeMax FLOAT, 
  frequencia FLOAT NOT NULL, 
  CONSTRAINT EspecificacoesDispositivoWiFi_PK PRIMARY KEY (nome, idModelo), 
  CONSTRAINT EspecificacoesDispositivoWiFi_idModelo_FK1 FOREIGN KEY (idModelo) REFERENCES Modelo(idModelo)
);

--TABELA DispositivoWiFi:
DROP TABLE IF EXISTS DispositivoWiFi;
CREATE TABLE DispositivoWiFi
(
  idDispositivo INTEGER, 
  nome TEXT NOT NULL, 
  idModelo INTEGER NOT NULL, 
  CONSTRAINT DispositivoWiFi_PK PRIMARY KEY (idDispositivo), 
  CONSTRAINT DispositivoWiFi_idModelo_FK1 FOREIGN KEY (idModelo) REFERENCES Modelo(idModelo), 
  CONSTRAINT DispositivoWiFi_Especificacoes_FK2 FOREIGN KEY (nome, idModelo) REFERENCES EspecificacoesDispositivoWiFi(nome, idModelo)
);

--TABELA EspecificacoesDispositivoInfravermelho:
DROP TABLE IF EXISTS EspecificacoesDispositivoInfravermelho;
CREATE TABLE EspecificacoesDispositivoInfravermelho
(
  nome TEXT NOT NULL, 
  idModelo INTEGER NOT NULL, 
  frequencia FLOAT NOT NULL, 
  CONSTRAINT EspecificacoesDispositivoWiFi_PK PRIMARY KEY (nome, idModelo), 
  CONSTRAINT EspecificacoesDispositivoWiFi_idModelo_FK1 FOREIGN KEY (idModelo) REFERENCES Modelo(idModelo)
);

--TABELA DispositivoInfravermelho:
DROP TABLE IF EXISTS DispositivoInfravermelho;
CREATE TABLE DispositivoInfravermelho
(
  idDispositivo INTEGER, 
  nome TEXT NOT NULL, 
  idModelo INTEGER NOT NULL, 
  CONSTRAINT DispositivoInfravermelho_PK PRIMARY KEY (idDispositivo), 
  CONSTRAINT DispositivoInfravermelho_idModelo_FK1 FOREIGN KEY (idModelo) REFERENCES Modelo(idModelo), 
  CONSTRAINT DispositivoInfravermelho_Especificacoes_FK2 FOREIGN KEY (nome, idModelo) REFERENCES EspecificacoesDispositivoInfravermelho
);

--TABELA Grupo:
DROP TABLE IF EXISTS Grupo;
CREATE TABLE Grupo
(
  idGrupo INTEGER, 
  nome TEXT NOT NULL, 
  qtdDispositivosAssociados INTEGER NOT NULL CHECK (qtdDispositivosAssociados >= 0), 
  idCasa INTEGER NOT NULL, 
  CONSTRAINT Grupo_PK PRIMARY KEY (idGrupo), 
  CONSTRAINT Grupo_idCasa_FK1 FOREIGN KEY (idCasa) REFERENCES Casa(idCasa) 
  ON DELETE CASCADE
);

--TABELA GrupoDispositivoBluetooth:
DROP TABLE IF EXISTS GrupoDispositivoBluetooth;
CREATE TABLE GrupoDispositivoBluetooth
(
  idGrupo INTEGER NOT NULL, 
  idDispositivo INTEGER NOT NULL, 
  CONSTRAINT GrupoDispositivoBluetooth_PK PRIMARY KEY (idGrupo, idDispositivo), 
  CONSTRAINT GrupoDispositivoBluetooth_idGrupo_FK1 FOREIGN KEY (idGrupo) REFERENCES Grupo(idGrupo) 
  ON DELETE CASCADE, 
  CONSTRAINT GrupoDispositivoBluetooth_idDispositivo_FK2 FOREIGN KEY (idDispositivo) REFERENCES DispositivoBluetooth(idDispositivo) 
  ON DELETE CASCADE
);

--TABELA GrupoDispositivoWiFi:
DROP TABLE IF EXISTS GrupoDispositivoWiFi;
CREATE TABLE GrupoDispositivoWiFi
(
  idGrupo INTEGER NOT NULL, 
  idDispositivo INTEGER NOT NULL, 
  CONSTRAINT GrupoDispositivoWiFi_PK PRIMARY KEY (idGrupo, idDispositivo), 
  CONSTRAINT GrupoDispositivoWiFi_idGrupo_FK1 FOREIGN KEY (idGrupo) REFERENCES Grupo(idGrupo) 
  ON DELETE CASCADE, 
  CONSTRAINT GrupoDispositivoWiFi_idDispositivo_FK2 FOREIGN KEY (idDispositivo) REFERENCES DispositivoWiFi(idDispositivo) 
  ON DELETE CASCADE
);

--TABELA GrupoDispositivoInfravermelho:
DROP TABLE IF EXISTS GrupoDispositivoInfravermelho;
CREATE TABLE GrupoDispositivoInfravermelho
(
  idGrupo INTEGER NOT NULL, 
  idDispositivo INTEGER NOT NULL, 
  CONSTRAINT GrupoDispositivoInfravermelho_PK PRIMARY KEY (idGrupo, idDispositivo), 
  CONSTRAINT GrupoDispositivoInfravermelho_idGrupo_FK1 FOREIGN KEY (idGrupo) REFERENCES Grupo(idGrupo) 
  ON DELETE CASCADE, 
  CONSTRAINT GrupoDispositivoInfravermelho_idDispositivo_FK2 FOREIGN KEY (idDispositivo) REFERENCES DispositivoInfravermelho(idDispositivo) 
  ON DELETE CASCADE
);


--TABELA DispositivoBluetoothAcaoAssistente:
DROP TABLE IF EXISTS DispositivoBluetoothAcaoAssistente;
CREATE TABLE DispositivoBluetoothAcaoAssistente
(
  idDispositivo INTEGER NOT NULL, 
  nomeAcao TEXT NOT NULL, 
  idAssistente INTEGER NOT NULL, 
  CONSTRAINT DispositivoBluetoothAcaoAssistente_PK PRIMARY KEY (idDispositivo, nomeAcao), 
  CONSTRAINT DispositivoBluetoothAcaoAssistente_idDispositivo_FK1 FOREIGN KEY (idDispositivo) REFERENCES DispositivoBluetooth(idDispositivo)
  ON DELETE CASCADE, 
  CONSTRAINT DispositivoBluetoothAcaoAssistente_nomeAcao_FK2 FOREIGN KEY (nomeAcao) REFERENCES Acao(nome)
  ON DELETE CASCADE ON UPDATE CASCADE, 
  CONSTRAINT DispositivoBluetoothAcaoAssistente_idAssistente_FK3 FOREIGN KEY (idAssistente) REFERENCES AssistenteVirtual(idAssistente)
);


--TABELA DispositivoWiFiAcaoAssistente:
DROP TABLE IF EXISTS DispositivoWiFiAcaoAssistente;
CREATE TABLE DispositivoWiFiAcaoAssistente
(
  idDispositivo INTEGER NOT NULL, 
  nomeAcao TEXT NOT NULL, 
  idAssistente INTEGER NOT NULL, 
  CONSTRAINT DispositivoWiFiAcaoAssistente_PK PRIMARY KEY (idDispositivo, nomeAcao), 
  CONSTRAINT DispositivoWiFiAcaoAssistente_idDispositivo_FK1 FOREIGN KEY (idDispositivo) REFERENCES DispositivoWiFi(idDispositivo)
  ON DELETE CASCADE, 
  CONSTRAINT DispositivoWiFiAcaoAssistente_nomeAcao_FK2 FOREIGN KEY (nomeAcao) REFERENCES Acao(nome)
  ON DELETE CASCADE ON UPDATE CASCADE, 
  CONSTRAINT DispositivoWiFiAcaoAssistente_idAssistente_FK3 FOREIGN KEY (idAssistente) REFERENCES AssistenteVirtual(idAssistente)
);

--TABELA DispositivoInfravermelhoAcaoAssistente:
DROP TABLE IF EXISTS DispositivoInfravermelhoAcaoAssistente;
CREATE TABLE DispositivoInfravermelhoAcaoAssistente
(
  idDispositivo INTEGER NOT NULL, 
  nomeAcao TEXT NOT NULL, 
  idAssistente INTEGER NOT NULL, 
  CONSTRAINT DispositivoInfravermelhoAcaoAssistente_PK PRIMARY KEY (idDispositivo, nomeAcao), 
  CONSTRAINT DispositivoInfravermelhoAcaoAssistente_idDispositivo_FK1 FOREIGN KEY (idDispositivo) REFERENCES DispositivoInfravermelho(idDispositivo)
  ON DELETE CASCADE, 
  CONSTRAINT DispositivoInfravermelhoAcaoAssistente_nomeAcao_FK2 FOREIGN KEY (nomeAcao) REFERENCES Acao(nome)
  ON DELETE CASCADE ON UPDATE CASCADE, 
  CONSTRAINT DispositivoInfravermelhoAcaoAssistente_idAssistente_FK3 FOREIGN KEY (idAssistente) REFERENCES AssistenteVirtual(idAssistente)
);


--TABELA DispositivoWiFiAplicacao:
DROP TABLE IF EXISTS DispositivoWiFiAplicacao;
CREATE TABLE DispositivoWiFiAplicacao
(
  idDispositivo INTEGER NOT NULL, 
  idAplicacao INTEGER NOT NULL, 
  CONSTRAINT DispositivoWiFiAplicacao_PK PRIMARY KEY (idDispositivo, idAplicacao), 
  CONSTRAINT DispositivoWiFiAplicacao_idDispositivo_FK1 FOREIGN KEY (idDispositivo) REFERENCES DispositivoWiFi(idDispositivo)
  ON DELETE CASCADE, 
  CONSTRAINT DispositivoWiFiAplicacao_idAplicacao_FK2 FOREIGN KEY (idAplicacao) REFERENCES Aplicacao(idAplicacao)
);


--TABELA DispositivoInfraComando:
DROP TABLE IF EXISTS DispositivoInfraComando;
CREATE TABLE DispositivoInfraComando
(
  idDispositivo INTEGER NOT NULL, 
  idComando INTEGER NOT NULL, 
  CONSTRAINT DispositivoInfraComando_PK PRIMARY KEY (idDispositivo, idComando), 
  CONSTRAINT DispositivoInfraComando_idDispositivo_FK1 FOREIGN KEY (idDispositivo) REFERENCES DispositivoInfravermelho(idDispositivo)
  ON DELETE CASCADE, 
  CONSTRAINT DispositivoInfraComando_idComando_FK2 FOREIGN KEY (idComando) REFERENCES ComandoInfravermelho(idComando)
  ON DELETE CASCADE
);