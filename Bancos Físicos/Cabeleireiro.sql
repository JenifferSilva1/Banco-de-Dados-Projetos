create schema cabeleireiro;

CREATE TABLE Servicos (
    idServicos INT not null unique auto_increment,
    tipoServicos VARCHAR (25)not null,
    precoServicos FLOAT not null,
    dataServicos DATE not null,
    horaServicos TIME not null,
    PRIMARY KEY(idServicos)
);

CREATE TABLE Pagamento (
    HoraPagamento TIME not null,
    NumeroCompraPagamento INT not null,
    idPagamento INT not null unique auto_increment,
    tipoPagamento VARCHAR (10) not null,
    ValorPagamento FLOAT not null,
    DataPagamento DATE not null,
    PRIMARY KEY(idPagamento)
);

CREATE TABLE Produto (
    tipoProduto VARCHAR (50) not null,
    validadeProduto DATE not null,
    precoProduto FLOAT not null,
    idProduto INT not null unique auto_increment,
    marcaProduto VARCHAR (50) not null,
    nomeProduto VARCHAR (50) not null,
    PRIMARY KEY(idProduto)
);

CREATE TABLE Estoque (
    idEstoque INT not null unique auto_increment,
    quantidadeMinimaEstoque INT not null,
    quantidadeMaximaEstoque INT not null,
    PRIMARY KEY(idEstoque)
);

CREATE TABLE Empresa (
    fk_telefoneEmpresa_telefoneEmpresa_PK INT not null,
    idEmpresa INT,
    fk_enderecoEmpresa_enderecoEmpresa_PK INT not null,
    cnpjEmpresa VARCHAR (18) not null,
    nomeEmpresa VARCHAR (50) not null,
    idSalaoCabeleireiro INT,
    produtoFornecidoFornecedor VARCHAR (50) not null,
    idFornecedor INT,
    Empresa_TIPO INT not null,
    PRIMARY KEY (idEmpresa, idSalaoCabeleireiro, idFornecedor)
);

CREATE TABLE Pessoa (
    sexoPessoa ENUM ('F', 'M') not null,
    nomePessoa VARCHAR (50)not null,
    cpfPessoa VARCHAR (14) not null,
    fk_enderecoPessoa_enderecoPessoa_PK VARCHAR (50) not null,
    rgPessoa VARCHAR (12) not null,
    dataNascimentoPessoa DATE not null,
    fk_telefonePessoa_telefonePessoa_PK INT not null,
    idPessoa INT,
    tipoContratoFuncionario VARCHAR (10) not null,
    idFuncionario INT,
    ctpsFuncionario VARCHAR (12) not null,
    turnoFuncionario VARCHAR (10) not null,
    salarioFuncionario FLOAT not null,
    cargoFuncionario VARCHAR (10) not null,
    idCliente INT,
    Pessoa_TIPO INT not null,
    PRIMARY KEY (idPessoa, idFuncionario, idCliente)
);

CREATE TABLE telefoneEmpresa (
    telefoneEmpresa_PK INT NOT NULL PRIMARY KEY,
    telefoneEmpresa INT not null
);

CREATE TABLE enderecoEmpresa (
    enderecoEmpresa_PK INT NOT NULL PRIMARY KEY,
    numero VARCHAR (10) not null,
    cep VARCHAR (9) not null,
    bairro VARCHAR (50) not null,
    rua VARCHAR (50) not null,
    complemento VARCHAR (10) not null
);

CREATE TABLE enderecoPessoa (
    enderecoPessoa_PK VARCHAR (50) NOT NULL PRIMARY KEY,
    numero VARCHAR (10) not null,
    rua VARCHAR (50) not null,
    complemento VARCHAR (10) not null,
    bairro VARCHAR (50) not null,
    cep VARCHAR (9) not null
);

CREATE TABLE telefonePessoa (
    telefonePessoa_PK INT NOT NULL PRIMARY KEY,
    telefonePessoa INT not null
);

CREATE TABLE Armazenar (
    fk_Estoque_idEstoque INT not null,
    fk_Produto_idProduto INT not null
);

CREATE TABLE Pertencer (
    fk_Empresa_idEmpresa INT not null,
    fk_Empresa_idSalaoCabeleireiro INT not null,
    fk_Empresa_idFornecedor INT not null,
    fk_Estoque_idEstoque INT not null
);

CREATE TABLE Fornecer (
    fk_Produto_idProduto INT not null,
    fk_Empresa_idEmpresa INT not null,
    fk_Empresa_idSalaoCabeleireiro INT not null,
    fk_Empresa_idFornecedor INT not null
);

CREATE TABLE Atender (
    fk_Pessoa_idPessoa INT not null,
    fk_Pessoa_idFuncionario INT not null,
    fk_Pessoa_idCliente INT not null,
    fk_Pessoa_idPessoa_ INT not null,
    fk_Pessoa_idFuncionario_ INT not null,
    fk_Pessoa_idCliente_ INT not null
);

CREATE TABLE Escolher (
    fk_Servicos_idServicos INT not null,
    fk_Pessoa_idPessoa INT not null,
    fk_Pessoa_idFuncionario INT not null,
    fk_Pessoa_idCliente INT not null
);

CREATE TABLE Realizar (
    fk_Servicos_idServicos INT not null,
    fk_Pessoa_idPessoa INT not null,
    fk_Pessoa_idFuncionario INT not null,
    fk_Pessoa_idCliente INT not null
);

CREATE TABLE Efetuar (
    fk_Pessoa_idPessoa INT not null,
    fk_Pessoa_idFuncionario INT not null,
    fk_Pessoa_idCliente INT not null,
    fk_Pagamento_idPagamento INT not null
);