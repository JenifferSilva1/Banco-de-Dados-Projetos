CREATE TABLE Pagamento (
    fk_FormaPagamento_FormaPagamento_PK INT not null,
    valorPagamento FLOAT not null,
    idPagamento INT not null unique auto_increment,
    notaFiscalPagamento INT not null,
    dataPagamento DATE not null,
    PRIMARY KEY (idPagamento)
);

CREATE TABLE Pedido (
    idPedido INT,
    quantidadePessoasPedido INT not null,
    quantidadePassagensPedido INT not null,
    numeroPedido DOUBLE not null,
    dataIdaPedido DATE not null,
    dataVoltaPedido DATE not null,
    destinoPedido VARCHAR(50) not null,
    origemPedido VARCHAR(50) not null,
    precoPedido FLOAT not null,
    transportePedido VARCHAR(25) not null,
    dataCompraPedido DATE not null,
    empresaPedido VARCHAR(50) not null,
    fk_enderecoPessoa_enderecoPessoa_PK INT not null,
    idPassagensAereas INT,
    horaCheckinPassagensAereas TIME not null,
    idPassagensOnibus INT,
    horacheckinPassagensOnibus TIME not null,
    idTransfer INT,
    idHospedagem INT not null,
    horacheckinHospedagem TIME not null,
    horacheckoutHospedagem TIME not null,
    idPacotesFechadosViagem INT not null,
    promocoesPacotesFechadosViagem FLOAT not null,
    idSeguroViagem INT,
    idPasseio INT,
    horaPasseio INT not null,
    Pedido_TIPO INT not null,
    PRIMARY KEY (idPedido, idPassagensAereas, idPassagensOnibus, idTransfer, idHospedagem, idPacotesFechadosViagem, idSeguroViagem, idPasseio)
);

CREATE TABLE LocacaoAutomovel (
    idLocacaoAutomovel INT not null unique auto_increment,
    marcaLocacaoAutomovel VARCHAR(50) not null,
    modeloLocacaoAutomovel VARCHAR(50) not null,
    corLocacaoAutomovel VARCHAR(25) not null,
    placaLocacaoAutomovel VARCHAR(7) not null,
    chassiLocacaoAutomovel VARCHAR(17) not null,
    anoLocacaoAutomovel DATE not null,
    tipoCombustivelLocacaoAutomovel VARCHAR(25) not null,
    renavanLocacaoAutomovel VARCHAR(11) not null,
    PRIMARY KEY (idLocacaoAutomovel)
);

CREATE TABLE Empresa (
    cnpjEmpresa VARCHAR(18) not null,
    fk_telefoneEmpresa_telefoneEmpresa_PK INT not null,
    idEmpresa INT,
    nomeEmpresa VARCHAR(50) not null,
    fk_enderecoEmpresa_enderecoEmpresa_PK INT not null,
    fk_servicoFornecidoFornecedor_servicoFornecidoFornecedor_PK INT not null,
    idFornecedor INT,
    fk_produtoFornecidoFornecedor_produtoFornecidoFornecedor_PK INT not null,
    idAgenciaViagens INT,
    Empresa_TIPO INT not null,
    PRIMARY KEY (idEmpresa, idFornecedor, idAgenciaViagens)
);

CREATE TABLE Pessoa (
    cpfPessoa VARCHAR(14) not null,
    fk_telefonePessoa_telefonePessoa_PK INT not null,
    fk_enderecoPessoa_enderecoPessoa_PK INT not null,
    idPessoa INT,
    sexoPessoa enum('m','f') not null,
    nomePessoa VARCHAR(50) not null,
    rgPessoa VARCHAR(12) not null,
    dataNascimentoPessoa DATE not null,
    emailPessoa VARCHAR(50) not null,
    idCliente INT,
    fk_PassaporteCliente_PassaporteCliente_PK INT not null,
    fk_cnhCliente_cnhCliente_PK INT not null,
    fk_areaAtuacaoFuncionario_areaAtuacaoFuncionario_PK INT not null,
    turnoFuncionario VARCHAR(25) not null,
    registroDiplomaFuncionario VARCHAR(50) not null,
    idFuncionario INT,
    cargoFuncionario VARCHAR(25) not null,
    tipoContratoFuncionario VARCHAR(50) not null,
    fk_crmFuncionario_crmFuncionario_PK INT not null,
    ctpsFuncionario VARCHAR(12) not null,
    salarioFuncionario FLOAT not null,
    fk_creFuncionario_creFuncionario_PK INT not null,
    Pessoa_TIPO INT not null,
    PRIMARY KEY (idPessoa, idCliente, idFuncionario) 
);

CREATE TABLE Estoque (
    tipoProdutoEstoque VARCHAR(50) not null,
    idEstoque INT not null unique auto_increment,
    fk_validadeEstoque_validadeEstoque_PK INT not null,
    produtoEstoque VARCHAR(50) not null,
    quantidadeMinimaEstoque INT not null,
    codigoBarrasEstoque INT not null,
    quantidadeMaximaEstoque INT not null,
    PRIMARY KEY (idEstoque)
);

CREATE TABLE Produto (
    precoProduto FLOAT not null,
    nomeProduto VARCHAR(50) not null,
    idProduto INT not null unique auto_increment,
    validadeProduto DATE not null,
    tipoProduto VARCHAR(50) not null,
    marcaProduto VARCHAR(50) not null,
    PRIMARY KEY (idProduto)
);

CREATE TABLE enderecoPessoa (
    enderecoPessoa_PK INT NOT NULL unique auto_increment,
    cep VARCHAR(9) not null,
    complemento VARCHAR(10) not null,
    bairro VARCHAR(50) not null,
    numero VARCHAR(10) not null,
    rua VARCHAR(50) not null,
    PRIMARY KEY (enderecoPessoa_PK)
);

CREATE TABLE servicoFornecidoFornecedor (
    servicoFornecidoFornecedor_PK INT NOT NULL,
    servicoFornecidoFornecedor VARCHAR(50) not null,
    PRIMARY KEY (servicoFornecidoFornecedor_PK)
);

CREATE TABLE produtoFornecidoFornecedor (
    produtoFornecidoFornecedor_PK INT NOT NULL,
    produtoFornecidoFornecedor VARCHAR(50) not null,
    PRIMARY KEY (produtoFornecidoFornecedor_PK)
);

CREATE TABLE telefoneEmpresa (
    telefoneEmpresa_PK INT NOT NULL,
    telefoneEmpresa INT not null,
    PRIMARY KEY (telefoneEmpresa_PK)
);

CREATE TABLE enderecoEmpresa (
    enderecoEmpresa_PK INT NOT NULL,
    complemento VARCHAR(10) not null,
    bairro VARCHAR(50) not null,
    rua VARCHAR(50) not null,
    cep VARCHAR(9) not null,
    numero VARCHAR(10) not null,
    PRIMARY KEY (enderecoEmpresa_PK)
);

CREATE TABLE PassaporteCliente (
    PassaporteCliente_PK INT NOT NULL,
    PassaporteCliente INT not null,
    PRIMARY KEY (PassaporteCliente_PK)
);

CREATE TABLE cnhCliente (
    cnhCliente_PK INT NOT NULL,
    cnhCliente VARCHAR(12) not null,
    PRIMARY KEY (cnhCliente_PK)
);

CREATE TABLE telefonePessoa (
    telefonePessoa_PK INT NOT NULL,
    telefonePessoa INT not null,
    PRIMARY KEY (telefonePessoa_PK)
);

CREATE TABLE enderecoPessoa (
    enderecoPessoa_PK INT NOT NULL,
    bairro VARCHAR(50) not null,
    rua VARCHAR(50) not null,
    numero VARCHAR(10) not null,
    complemento VARCHAR(10) not null,
    cep VARCHAR(9) not null,
    PRIMARY KEY (enderecoPessoa_PK)
);

CREATE TABLE areaAtuacaoFuncionario (
    areaAtuacaoFuncionario_PK INT NOT NULL,
    areaAtuacaoFuncionario VARCHAR(25) not null,
    PRIMARY KEY (areaAtuacaoFuncionario_PK)
);

CREATE TABLE crmFuncionario (
    crmFuncionario_PK INT NOT NULL,
    crmFuncionario VARCHAR(13) not null,
    PRIMARY KEY (crmFuncionario_PK)
);

CREATE TABLE creFuncionario (
    creFuncionario_PK INT NOT NULL,
    creFuncionario VARCHAR(18) not null,
    PRIMARY KEY (creFuncionario_PK)
);

CREATE TABLE validadeEstoque (
    validadeEstoque_PK INT NOT NULL,
    validadeEstoque DATE not null,
    PRIMARY KEY (validadeEstoque_PK)
);

CREATE TABLE Atender (
    fk_Pessoa_idPessoa INT not null,
    fk_Pessoa_idCliente INT not null,
    fk_Pessoa_idFuncionario INT not null,
    fk_Pessoa_idPessoa_ INT not null,
    fk_Pessoa_idCliente_ INT not null,
    fk_Pessoa_idFuncionario_ INT not null
);

CREATE TABLE Realizar (
    fk_Pessoa_idPessoa INT not null,
    fk_Pessoa_idCliente INT not null,
    fk_Pessoa_idFuncionario INT not null,
    fk_Pedido_idPedido INT not null,
    fk_Pedido_idPassagensAereas INT not null,
    fk_Pedido_idPassagensOnibus INT not null,
    fk_Pedido_idTransfer INT not null,
    fk_Pedido_idHospedagem INT not null,
    fk_Pedido_idPacotesFechadosViagem INT not null,
    fk_Pedido_idSeguroViagem INT not null,
    fk_Pedido_idPasseio INT not null
);

CREATE TABLE Pertencer (
    fk_Pedido_idPedido INT not null,
    fk_Pedido_idPassagensAereas INT not null,
    fk_Pedido_idPassagensOnibus INT not null,
    fk_Pedido_idTransfer INT not null,
    fk_Pedido_idHospedagem INT not null,
    fk_Pedido_idPacotesFechadosViagem INT not null,
    fk_Pedido_idSeguroViagem INT not null,
    fk_Pedido_idPasseio INT not null,
    fk_LocacaoAutomovel_idLocacaoAutomovel INT not null
);

CREATE TABLE Efetuar (
    fk_Pessoa_idPessoa INT not null,
    fk_Pessoa_idCliente INT not null,
    fk_Pessoa_idFuncionario INT not null,
    fk_Pagamento_idPagamento INT not null
);

CREATE TABLE Receber (
    fk_Pagamento_idPagamento INT not null,
    fk_Empresa_idEmpresa INT not null,
    fk_Empresa_idFornecedor INT not null,
    fk_Empresa_idAgenciaViagens INT not null
);

CREATE TABLE Possuir (
    fk_Empresa_idEmpresa INT not null,
    fk_Empresa_idFornecedor INT not null,
    fk_Empresa_idAgenciaViagens INT not null,
    fk_Estoque_idEstoque INT not null
);

CREATE TABLE Fornecer (
    fk_Empresa_idEmpresa INT not null ,
    fk_Empresa_idFornecedor INT not null,
    fk_Empresa_idAgenciaViagens INT not null,
    fk_Produto_idProduto INT not null
);

CREATE TABLE Armazenar (
    fk_Estoque_idEstoque INT not null,
    fk_Produto_idProduto INT not null
);

CREATE TABLE Cadastrar (
    fk_Pessoa_idPessoa INT not null,
    fk_Pessoa_idCliente INT not null,
    fk_Pessoa_idFuncionario INT not null,
    fk_Pessoa_idPessoa_ INT not null,
    fk_Pessoa_idCliente_ INT not null,
    fk_Pessoa_idFuncionario_ INT not null
);