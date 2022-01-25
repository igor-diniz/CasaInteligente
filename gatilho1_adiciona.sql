--Comando Infravermelho e Dispositivo Infravermelho devem ter frequências iguais quando conectados entre si
CREATE Trigger FrequenciasIguais
BEFORE INSERT ON DispositivoInfraComando
FOR EACH ROW 
WHEN (SELECT frequencia FROM EspecificacoesComandoInfravermelho 
        WHERE (nome, idModelo) IN 
        (SELECT nome, idModelo FROM ComandoInfravermelho CI
            WHERE CI.idComando = New.idComando))

    <>

    (SELECT frequencia FROM EspecificacoesDispositivoInfravermelho 
        WHERE (nome, idModelo) IN 
        (SELECT nome, idModelo FROM DispositivoInfravermelho DI
            WHERE DI.idDispositivo = New.idDispositivo))
BEGIN
    SELECT raise(abort,'Comando Infravermelho e Dispositivo Infravermelho devem ter a mesma frequência!');
END;



-- Assistente Virtual e sua aplicação devem ter o mesmo idioma
CREATE Trigger IdiomasIguais
BEFORE INSERT ON AssistenteVirtual
FOR EACH ROW 
WHEN EXISTS 
        (SELECT * FROM AssistenteVirtual, Aplicacao App 
            WHERE New.idAplicacao = App.idAplicacao 
            AND New.idioma <>  App.idioma)
BEGIN
    SELECT raise(abort,'Assistente Virtual e sua aplicação devem ter o mesmo idioma!');
END;




