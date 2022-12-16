use quitanda;

CREATE TABLE pessoa (
    datanasc varchar (50) not null ,
    rgpessoa varchar (7) not null ,
    sexopessoa enum ('M', 'F'),
    nomepessoa VARCHAR (50) not null,
    idpessoa INT,
    cpfpessoa VARCHAR (11) not null,
    telefonepessoa VARCHAR (12) not null,
    fk_enderecopessoa_enderecopessoa_PK INT not null,
    idfuncionario INT,
    cargofuncionario VARCHAR (50) not null,
    idcliente INT,
    Pessoa_TIPO INT not null,
    PRIMARY KEY (idCliente)
);

CREATE TABLE Pedido (
    nome VARCHAR (50),
    tipo VARCHAR (50),
    validade varchar (8) not null,
    preco FLOAT,
    idPedido INT,
    marca VARCHAR (50) not null,
    idHortfruti INT ,
    idMercearia INT,
    Pedido_TIPO INT not null,
    PRIMARY KEY (idPedido, idHortfruti, idMercearia)
);

CREATE TABLE Estoque_Empresa (
    nomeProduto VARCHAR (50) not null,
    qtdProduto INT not null,
    tipoProduto VARCHAR (50) not null,
    idProduto  INT,
    nomeEmpresa VARCHAR (50) not null,
    telefoneEmpresa VARCHAR (11) not null,
    cnpjEmpresa VARCHAR (14) not null,
    idEmpresa INT,
    fk_enderecoEmpresa_enderecoEmpresa_PK INT not null ,
    idQuitanda INT,
    idFornecedor INT,
    Empresa_TIPO INT,
    PRIMARY KEY (idProduto, idEmpresa, idQuitanda, idFornecedor)
);

CREATE TABLE Produto (
    idProduto INT ,
    nomeProduto VARCHAR (50) not null,
    marcaProduto VARCHAR (50) not null,
    tipoProduto VARCHAR (50) not null,
    validadeProduto DATE,
    PRIMARY KEY (idProduto)
);

CREATE TABLE Pagamento (
    dataPagamento date,
    tipoPagamento VARCHAR (50) not null,
    numeroCompra VARCHAR (50) not null,
    horaPagamento TIME,
    valorPagamento FLOAT,
    idPagamento INT ,
    PRIMARY KEY (idPagamento)
);

CREATE TABLE enderecoPessoa (
    enderecoPessoa_PK INT NOT NULL  ,
    CEP VARCHAR (50) not null,
    Bairro VARCHAR (50) not null,
    Numero VARCHAR (50) not null,
    Rua VARCHAR (50) not null,
    Complemento VARCHAR (50) not null
);

CREATE TABLE enderecoEmpresa (
    enderecoEmpresa_PK INT NOT NULL  ,
    Complemento VARCHAR (50) not null,
    Bairro VARCHAR (50) not null,
    CEP VARCHAR (50) not null,
    Numero VARCHAR (50) not null,
    Rua VARCHAR (50) not null
);

CREATE TABLE atender (
    fk_Pessoa_idPessoa INT not null,
    fk_Pessoa_idFuncionario INT not null,
    fk_Pessoa_idCliente int not null,
    fk_Pessoa_idPessoa_ INT not null,
    fk_Pessoa_idFuncionario_ INT not null,
    fk_Pessoa_idCliente_ int not null
);

CREATE TABLE realizar (
    fk_Pessoa_idPessoa INT not null,
    fk_Pessoa_idFuncionario INT not null,
    fk_Pessoa_idCliente int not null,
    fk_Pedido_idPedido INT not null,
    fk_Pedido_idHortfruti INT not null,
    fk_Pedido_idMercearia INT not null
);

CREATE TABLE efetuar (
    fk_Pessoa_idPessoa INT not null,
    fk_Pessoa_idFuncionario INT not null,
    fk_Pessoa_idCliente int not null,
    fk_Pagamento_idPagamento INT not null
);

CREATE TABLE receber (
    fk_Empresa_idEmpresa INT not null,
    fk_Empresa_idQuitanda INT not null,
    fk_Empresa_idFornecedor INT not null,
    fk_Pagamento_idPagamento INT not null
);

CREATE TABLE Fornecer (
    fk_Empresa_idEmpresa INT not null,
    fk_Empresa_idQuitanda INT not null,
    fk_Empresa_idFornecedor INT not null,
    fk_Produto_idProduto INT not null
);

CREATE TABLE amarzenar (
    fk_Estoque_Empresa_idProduto INT not null,
    fk_Produto_idProduto INT not null
);

CREATE TABLE Pertencer (
    fk_Produto_idProduto INT not null,
    fk_Pedido_idPedido INT not null,
    fk_Pedido_idHortfruti INT not null,
    fk_Pedido_idMercearia INT not null
);
 