/* Logico_Informatica: */

CREATE TABLE Cliente (
    idCliente INT not null unique auto_increment,
    nomeCliente VARCHAR(50) not null,
    cpfCliente VARCHAR(14) not null,
    rgCliente VARCHAR(12) not null,
    dataNascimentoCliente DATE not null,
    fk_telefoneCliente_telefoneCliente_PK INT not null,
    fk_enderecoCliente_enderecoCliente_PK INT not null,
    PRIMARY KEY (idCliente)
);

CREATE TABLE Produto (
    idProduto INT not null unique auto_increment,
    marcaProduto VARCHAR(50) not null,
    precoProduto FLOAT not null,
    modeloProduto VARCHAR(50) not null,
    dataValidadeProduto DATE not null,
    garantiaProduto DATE not null,
    PRIMARY KEY (idProduto)
);

CREATE TABLE MemoriaRam (
    marcaMemoriaRam VARCHAR(50) not null,
    idMemoriaRam INT not null unique auto_increment,
    capacidadeMemoriaRam VARCHAR(25) not null,
    velocidadeMemoriaRam VARCHAR(25) not null,
    pesoMemoriaRam FLOAT not null,
    frequenciaMemoriaRam VARCHAR(25) not null,
    precoMemoriaRam FLOAT not null,
    modeloMemoriaRam VARCHAR(50) not null,
    numeroSerieMemoriaRam INT not null,
    PRIMARY KEY (idMemoriaRam)
);

CREATE TABLE MemoriaSSD (
    marcaMemoriaSSD VARCHAR(50) not null,
    capacidadeMemoriaSSD VARCHAR(25) not null,
    velocidadeMemoriaSSD VARCHAR(25) not null,
    numeroSerieMemoriaSSD INT not null,
    precoMemoriaSSD FLOAT not null,
    modeloMemoriaSSD VARCHAR(50) not null,
    idMemoriaSSD INT not null unique auto_increment,
    PRIMARY KEY (idMemoriaSSD)
);

CREATE TABLE Processador (
    marcaProcessador VARCHAR(50) not null,
    modeloProcessador VARCHAR(50) not null,
    chipsetsDeSuporteProcessador VARCHAR(25) not null,
    suporteSOProcessador VARCHAR(50) not null,
    pesoProcessador FLOAT not null,
    numeroSerieProcessador INT not null,
    frequenciaProcessador VARCHAR(25) not null,
    memoriaCacheProcessador VARCHAR(25) not null,
    idProcessador INT not null unique auto_increment,
    PRIMARY KEY (idProcessador)
);

CREATE TABLE HD (
    marcaHD VARCHAR(50) not null,
    modeloHD VARCHAR(50) not null,
    numeroSerieHD INT not null,
    precoHD FLOAT not null,
    pesoHD FLOAT not null,
    capacidadeHD VARCHAR(25) not null,
    interfaceHD VARCHAR(50) not null,
    instalacaoHD VARCHAR(50) not null,
    velocidadeHD VARCHAR(50) not null,
    idHD INT not null unique auto_increment,
    cacheHD VARCHAR(25) not null,
    PRIMARY KEY (idHD)
);

CREATE TABLE PlacaDeVideo (
    precoPlacaDeVideo FLOAT not null,
    marcaPlacaDeVideo VARCHAR(50) not null,
    modeloPlacaDeVideo VARCHAR(50) not null,
    pesoPlacaDeVideo FLOAT not null,
    gpuPlacaDeVideo VARCHAR(50) not null,
    memoriaPlacaDeVideo VARCHAR(50) not null,
    interfacePlacaDeVideo VARCHAR(50) not null,
    saidasConexoesPlacaDeVideo VARCHAR(50) not null,
    exibicaoPlacaDeVideo VARCHAR(50) not null,
    sistemaOperacionalPlacaDeVideo VARCHAR(50) not null,
    resolucaoMaximaPlacaDeVideo VARCHAR(50) not null,
    gddrPlacaDeVideo VARCHAR(50) not null,
    barramentosPlacaDeVideo VARCHAR(50) not null,
    idPlacaDeVideo INT not null unique auto_increment,
    PRIMARY KEY (idPlacaDeVideo)
);

CREATE TABLE PlacaMae (
    idPlacaMae INT not null unique auto_increment,
    marcaPlacaMae VARCHAR(50) not null,
    modeloPlacaMae VARCHAR(50) not null,
    pesoPlacaMae FLOAT not null,
    numeroSeriePlacaMae INT not null,
    chipsetPlacaMae VARCHAR(50) not null,
    armazenamentoPlacaMae VARCHAR(50) not null,
    capacidadePlacaMae VARCHAR(50) not null,
    conectividadePlacaMae VARCHAR(50) not null,
    graficoPlacaMae VARCHAR(50) not null,
    slotsDeExpansaoPlacaMae VARCHAR(50) not null,
    suporteSOPlacaMae VARCHAR(50) not null,
    tamanhoPlacaMae FLOAT not null,
    PRIMARY KEY (idPlacaMae)
);

CREATE TABLE Fonte (
    idFonte INT not null,
    marcaFonte VARCHAR(50) not null,
    modeloFonte VARCHAR(50) not null,
    pesoFonte FLOAT not null,
    numeroSerieFonte INT not null,
    voltagemFonte VARCHAR(50) not null,
    frequenciaFonte VARCHAR(50) not null,
    potenciaFonte VARCHAR(25) not null,
    conectividadeFonte VARCHAR(25) not null,
    tamanhoFonte VARCHAR(50) not null,
    PRIMARY KEY (idFonte)
);

CREATE TABLE Ventoinha (
    idVentoinha INT not null unique auto_increment,
    marcaVentoinha VARCHAR(50) not null,
    modeloVentoinha VARCHAR(50) not null,
    pesoVentoinha FLOAT not null,
    numeroSerieVentoinha INT not null,
    corLedVentoinha VARCHAR(25) not null,
    velocidadeFanVentoinha VARCHAR(25) not null,
    conectividadeVentoinha VARCHAR(25) not null,
    tamanhoVentoinha VARCHAR(50) not null,
    PRIMARY KEY (idVentoinha)
);

CREATE TABLE Gabinete (
    idGabinete INT not null unique auto_increment,
    marcaGabinete VARCHAR(50) not null,
    modeloGabinete VARCHAR(50) not null,
    pesoGabinete FLOAT not null,
    numeroSerieGabinete INT not null,
    conectividadeGabinete VARCHAR(25) not null,
    baiasAcionamentoGabinete VARCHAR(10) not null,
    compatibilidadeGabinete VARCHAR(25) not null,
    kitAcessoriosGabinete VARCHAR(10) not null,
    medidasInternasGabinete VARCHAR(50) not null,
    tamanhoGabinete VARCHAR(50) not null,
    PRIMARY KEY (idGabinete)
);

CREATE TABLE Monitor (
    idMonitor INT not null unique auto_increment,
    marcaMonitor VARCHAR(50) not null,
    modeloMonitor VARCHAR(50) not null,
    pesoMonitor FLOAT not null,
    numeroSerieMonitor INT not null,
    dimensoesMonitor VARCHAR(50) not null,
    entradasEsaidasMonitor VARCHAR(25) not null,
    recursosMonitor VARCHAR(50) not null,
    tipoTelaMonitor VARCHAR(25) not null,
    tamanhoMonitor VARCHAR(50) not null,
    resolucaoMonitor VARCHAR(50) not null,
    brilhoMonitor VARCHAR(50) not null,
    contrasteDinamicoMonitor VARCHAR(50) not null,
    suporteCoresMonitor VARCHAR(255) not null,
    pixelPitchMonitor VARCHAR(100) not null,
    tempoRespostaMonitor TIME not null,
    anguloVisaoMonitor FLOAT not null,
    vesaMonitor VARCHAR(50) not null,
    frequenciaAnalogicaMonitor VARCHAR(50) not null,
    revestimentoTelaMonitor VARCHAR(50) not null,
    PRIMARY KEY (idMonitor)
);

CREATE TABLE CadeiraGamer (
    idCadeiraGamer INT not null unique auto_increment,
    marcaCadeiraGamer VARCHAR(50) not null,
    modeloCadeiraGamer VARCHAR(50) not null,
    pesoCadeiraGamer FLOAT not null,
    numeroSerieCadeiraGamer INT not null,
    recursosCadeiraGamer VARCHAR(50) not null,
    tipoEspumaCadeiraGamer VARCHAR(50) not null,
    densidadeEspumaCadeiraGamer VARCHAR(50) not null,
    espumaAssentoCadeiraGamer VARCHAR(50) not null,
    tipoMecanismoCadeiraGamer VARCHAR(50) not null,
    alturaBracoCadeiraGamer FLOAT not null,
    tipoBaseCadeiraGamer VARCHAR(50) not null,
    capacidadePesoCadeiraGamer FLOAT not null,
    assentoCadeiraGamer VARCHAR(50) not null,
    encostoCadeiraGamer VARCHAR(50) not null,
    rodasCadeiraGamer VARCHAR(10) not null,
    tamanhoCadeiraGamer VARCHAR(50) not null,
    PRIMARY KEY (idCadeiraGamer)
);

CREATE TABLE FitaRGB (
    idFitaRGB INT not null unique auto_increment,
    marcaFitaRGB VARCHAR(50) not null,
    modeloFitaRGB VARCHAR(50) not null,
    numeroSerieFitaRGB INT not null,
    pesoFitaRGB FLOAT not null,
    compatibilidadeFitaRGB VARCHAR(50) not null,
    alimentacaoFitaRGB VARCHAR(25) not null,
    conectividadeFitaRGB VARCHAR(25) not null,
    tamanhoFitaRGB VARCHAR(25) not null,
    PRIMARY KEY (idFitaRGB)
);

CREATE TABLE Teclado (
    idTeclado INT not null unique auto_increment,
    marcaTeclado VARCHAR(50) not null,
    modeloTeclado VARCHAR(50) not null,
    numeroSerieTeclado INT not null,
    pesoTeclado FLOAT not null,
    idiomaTeclado VARCHAR(25) not null,
    conectividadeTeclado VARCHAR(25) not null,
    tamanhoTeclado FLOAT not null,
    PRIMARY KEY (idTeclado)
);

CREATE TABLE MousePad (
    idMousePad INT not null unique auto_increment,
    marcaMousePad VARCHAR(50) not null,
    modeloMousePad VARCHAR(50) not null,
    pesoMousePad FLOAT not null,
    materialMousePad VARCHAR(25) not null,
    tamanhoMousePad FLOAT not null,
    espessuraMousePad FLOAT not null,
    larguraEcomprimento FLOAT not null,
    corMousePad VARCHAR(25) not null,
    PRIMARY KEY (idMousePad)
);

CREATE TABLE Mouse (
    idMouse INT not null unique auto_increment,
    marcaMouse VARCHAR(50) not null,
    modeloMouse VARCHAR(50) not null,
    numeroSerieMouse INT not null,
    pesoMouse FLOAT not null,
    corMouse VARCHAR(25) not null,
    conectividadeMouse VARCHAR(25) not null,
    compatibilidadeSOMouse VARCHAR(50) not null,
    dpiMouse VARCHAR(25) not null,
    tamanhoMouse FLOAT not null,
    PRIMARY KEY (idMouse)
);

CREATE TABLE Cooler (
    idCooler INT not null unique auto_increment,
    marcaCooler VARCHAR(50) not null,
    modeloCooler VARCHAR(50) not null,
    numeroSerieCooler INT not null,
    pesoCooler FLOAT not null,
    compatibilidadeCooler VARCHAR(50) not null,
    velocidadeCooler VARCHAR(25) not null,
    tipoRolamentoCooler VARCHAR(25) not null,
    tensaoCooler VARCHAR(25) not null,
    fluxoArCooler VARCHAR(25) not null,
    nivelSonoroCooler FLOAT not null,
    tamanhoCooler FLOAT not null,
    PRIMARY KEY (idCooler)
);

CREATE TABLE LojaInformatica (
    idLojaInformatica INT not null unique auto_increment,
    cnpjLojaInformatica VARCHAR(18) not null,
    enderecoLojaInformatica VARCHAR(255) not null,
    fk_telefoneLojaInformatica_telefoneLojaInformatica_PK INT not null,
    nomeFantasiaLojaInformatica VARCHAR(50) not null,
    fk_enderecoLojaInformatica_enderecoLojaInformatica_PK INT not null,
    PRIMARY KEY (idLojaInformatica)
);

CREATE TABLE Fornecedor (
    idFornecedor INT not null unique auto_increment,
    nomeFornecedor VARCHAR(50) not null,
    cnpjFornecedor VARCHAR(18) not null,
    enderecoFornecedor VARCHAR(255) not null,
    produtoFornecidoFornecedor VARCHAR(50) not null,
    fk_enderecoFornecedor_enderecoFornecedor_PK INT not null,
    fk_telefoneFornecedor_telefoneFornecedor_PK INT not null,
    PRIMARY KEY (idFornecedor)
);

CREATE TABLE Estoque (
    idEstoque INT not null unique auto_increment,
    tipoProdutoLojaInformatica VARCHAR(50) not null,
    produtoLojaInformatica VARCHAR(50) not null,
    quantidadeLojaInformatica INT not null,
    PRIMARY KEY (idEstoque)
);

CREATE TABLE Funcionario (
    idFuncionario INT not null unique auto_increment,
    nomeFuncionario VARCHAR(50) not null,
    cpfFuncionario VARCHAR(14) not null,
    ctpsFuncionario VARCHAR(12) not null,
    dataNascimentoFuncionario DATE not null,
    sexoFuncionario enum('m','f') not null,
    rgFuncionario VARCHAR(12) not null,
    fk_telefoneFuncionario_telefoneFuncionario_PK INT not null,
    enderecoFuncionario VARCHAR(255) not null,
    cargoFuncionario VARCHAR(25) not null,
    fk_enderecoLojaInformatica_enderecoLojaInformatica_PK INT not null,
    PRIMARY KEY (idFuncionario)
);

CREATE TABLE Pagamento (
    idPagamento INT not null unique auto_increment,
    dataPagamento DATE not null,
    notaFiscalPagamento INT not null,
    valorPagamento FLOAT not null,
    fk_FormaDePagamento_FormaDePagamento_PK INT not null,
    PRIMARY KEY (idPagamento)
);

CREATE TABLE telefoneCliente (
    telefoneCliente_PK INT NOT NULL,
    telefoneCliente INT not null,
    PRIMARY KEY (telefoneCliente_PK)
);

CREATE TABLE enderecoCliente (
    enderecoCliente_PK INT NOT NULL,
    ruaCliente VARCHAR(50) not null,
    bairroCliente VARCHAR(50) not null,
    complementoCliente VARCHAR(25) not null,
    numeroCliente VARCHAR(10) not null,
    cepCliente VARCHAR(9) not null,
    PRIMARY KEY (enderecoCliente_PK)
);

CREATE TABLE telefoneLojaInformatica (
    telefoneLojaInformatica_PK INT NOT NULL,
    telefoneLojaInformatica INT not null,
    PRIMARY KEY (telefoneLojaInformatica_PK)
);

CREATE TABLE enderecoLojaInformatica (
    enderecoLojaInformatica_PK INT NOT NULL,
    ruaLojaInformatica VARCHAR(50) not null,
    cepLojaInformatica VARCHAR(9) not null,
    numeroLojaInformatica VARCHAR(10) not null,
    bairroLojaInformatica VARCHAR(50) not null,
    complementoLojaInformatica VARCHAR(10) not null,
    PRIMARY KEY (enderecoLojaInformatica_PK)
);

CREATE TABLE enderecoFornecedor (
    enderecoFornecedor_PK INT NOT NULL,
    ruaFornecedor VARCHAR(50) not null,
    numeroFornecedor VARCHAR(10) not null,
    complementoFornecedor VARCHAR(10) not null,
    cepFornecedor VARCHAR(9) not null,
    bairroFornecedor VARCHAR(50) not null,
    PRIMARY KEY (enderecoFornecedor_PK)
);

CREATE TABLE telefoneFornecedor (
    telefoneFornecedor_PK INT NOT NULL,
    telefoneFornecedor INT not null,
    PRIMARY KEY (telefoneFornecedor_PK)
);

CREATE TABLE telefoneFuncionario (
    telefoneFuncionario_PK INT NOT NULL,
    telefoneFuncionario INT not null,
    PRIMARY KEY (telefoneFuncionario_PK)
);

CREATE TABLE enderecoFuncionario (
    enderecoFuncionario_PK INT NOT NULL,
    complementoFuncionario VARCHAR(10) not null,
    cepFuncionario VARCHAR(9) not null,
    ruaFuncionario VARCHAR(50) not null,
    numeroFuncionario VARCHAR(10) not null,
    bairroFuncionario VARCHAR(50) not null,
    PRIMARY KEY (enderecoFuncionario_PK)
);

CREATE TABLE Comprar (
    fk_Produto_idProduto INT not null,
    fk_Cliente_idCliente INT not null
);

CREATE TABLE Vender (
    fk_Cliente_idCliente INT not null,
    fk_Funcionario_idFuncionario INT not null
);

CREATE TABLE Estocar (
    fk_Estoque_idEstoque INT not null,
    fk_Produto_idProduto INT not null
);

CREATE TABLE Trabalhar (
    fk_LojaInformatica_idLojaInformatica INT not null,
    fk_Funcionario_idFuncionario INT not null
);

CREATE TABLE Fornecer (
    fk_Produto_idProduto INT not null,
    fk_Fornecedor_idFornecedor INT not null
);

CREATE TABLE Pertencer_Produto (
    fk_Produto_idProduto INT not null,
    fk_MemoriaSSD_idMemoriaSSD INT not null,
    fk_MemoriaRam_idMemoriaRam INT not null,
    fk_Processador_idProcessador INT not null,
    fk_Ventoinha_idVentoinha INT not null,
    fk_Gabinete_idGabinete INT not null,
    fk_HD_idHD INT not null,
    fk_PlacaDeVideo_idPlacaDeVideo INT not null,
    fk_PlacaMae_idPlacaMae INT not null,
    fk_Fonte_idFonte INT not null,
    fk_FitaRGB_idFitaRGB INT not null,
    fk_Cooler_idCooler INT not null,
    fk_MousePad_idMousePad INT not null,
    fk_Teclado_idTeclado INT not null,
    fk_Mouse_idMouse INT not null,
    fk_CadeiraGamer_idCadeiraGamer INT not null,
    fk_Monitor_idMonitor INT not null
);

CREATE TABLE Pagar (
    fk_Cliente_idCliente INT not null,
    fk_Pagamento_idPagamento INT not null
);

CREATE TABLE Pertencer (
    fk_LojaInformatica_idLojaInformatica INT not null,
    fk_Estoque_idEstoque INT not null
);

CREATE TABLE Receber (
    fk_Pagamento_idPagamento INT not null,
    fk_LojaInformatica_idLojaInformatica INT not null
);