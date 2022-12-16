create schema lojaDeDoces;

CREATE TABLE Entrega ( 
    idEntrega INT not null unique auto_increment,
    freteEntrega FLOAT not null,
    data_horaEntrega DATE not null,
    data_hora_saidaEntrega DATE not null,
    PRIMARY KEY(idEntrega)
);

CREATE TABLE Pessoa (
    cpfPessoa VARCHAR (14) not null,
    nomePessoa VARCHAR (50) not null,
    fk_telefonePessoa_telefonePessoa_PK INT not null,
    dataNascimentoPessoa DATE not null,
    rgPessoa VARCHAR (12) not null,
    idPessoa INT,
    fk_enderecoPessoa_enderecoPessoa_PK VARCHAR (50) not null,
    sexoPessoa ENUM ('F', 'M') not null,
    idCliente INT,
    tipoContratoFuncionario VARCHAR (25) not null,
    ctpsFuncionario VARCHAR (12) not null,
    salarioFuncionario FLOAT not null,
    cargoFuncionario VARCHAR (25) not null,
    idFuncionario INT,
    turnoFuncionario VARCHAR (10) not null,
    fk_cnhFuncionario_cnhFuncionario_PK INT not null,
    idMotoboy INT,
    chassiMotoboy INT not null,
    placaMotoboy VARCHAR (7) not null,
    modeloMotoboy VARCHAR (25) not null,
    renavanMotoboy VARCHAR (11) not null,
    marcaMotoboy VARCHAR (50) not null,
    obsMotoboy VARCHAR (255) not null,
    Pessoa_TIPO VARCHAR (50) not null,
    PRIMARY KEY (idPessoa, idCliente, idFuncionario, idMotoboy)
);

CREATE TABLE Pagamento (
    NumeroCompraPagamento INT not null,
    DataPagamento DATE not null,
    HoraPagamento TIME not null,
    ValorPagamento FLOAT not null,
    tipoPagamento VARCHAR (10) not null,
    idPagamento INT not null unique auto_increment,
    PRIMARY KEY(idPagamento)
);

CREATE TABLE Estoque_Empresa (
    quantidadeMinimaEstoque INT not null,
    idEstoque INT,
    quantidadeMaximaEstoque INT not null,
    cnpjEmpresa VARCHAR (18) not null,
    fk_telefoneEmpresa_telefoneEmpresa_PK INT not null,
    idEmpresa INT,
    nomeEmpresa VARCHAR (50) not null,
    fk_enderecoEmpresa_enderecoEmpresa_PK VARCHAR (50) not null,
    idLoja_de_doces INT not null,
    idFornecedor INT,
    produtoFornecidoFornecedor VARCHAR (50) not null,
    Empresa_TIPO VARCHAR (50) not null,
    PRIMARY KEY (idEstoque, idEmpresa, idLoja_de_doces, idFornecedor)
);

CREATE TABLE Produto (
    validadeProduto DATE not null,
    nomeProduto VARCHAR (50) not null,
    idProduto INT,
    precoProduto FLOAT not null,
    tipoProduto VARCHAR (50) not null,
    marcaProduto VARCHAR (50) not null,
    codigodebarrasproduto DOUBLE not null,
    idBebidas INT,
    idBomboniere INT,
    idSalgadinhos INT,
    id_Itens_saudaveis INT,
    idGomas_de_mascar INT,
    Produto_TIPO VARCHAR (50) not null,
    PRIMARY KEY (idProduto, idBebidas, idBomboniere, idSalgadinhos, id_Itens_saudaveis, idGomas_de_mascar)
);

CREATE TABLE Pedido (
    idPedido INT not null unique auto_increment,
    numeroPedido INT not null,
    quantidadePedido INT not null,
    dataPedido DATE not null,
    precoPedido FLOAT not null,
    PRIMARY KEY(idPedido)
);

CREATE TABLE cnhFuncionario (
    cnhFuncionario_PK INT not null,
    cnhFuncionario INT not null,
     PRIMARY KEY(cnhFuncionario_PK)
);

CREATE TABLE telefonePessoa (
    telefonePessoa_PK INT not null,
    telefonePessoa INT not null,
    PRIMARY KEY(telefonePessoa_PK)
);

CREATE TABLE enderecoPessoa (
    enderecoPessoa_PK VARCHAR (50) not null,
    cep VARCHAR (9) not null,
    bairro VARCHAR (50) not null,
    rua VARCHAR (50) not null,
    numero VARCHAR (10) not null,
    PRIMARY KEY(enderecoPessoa_PK)
);

CREATE TABLE telefoneEmpresa (
    telefoneEmpresa_PK INT not null,
    telefoneEmpresa INT not null,
    PRIMARY KEY(telefoneEmpresa_PK)
);

CREATE TABLE enderecoEmpresa (
    enderecoEmpresa_PK VARCHAR (50) not null,
    complemento VARCHAR (10) not null,
    numero VARCHAR (10) not null,
    bairro VARCHAR (10) not null,
    cep VARCHAR (9) not null,
    rua VARCHAR (10) not null,
    PRIMARY KEY(enderecoEmpresa_PK)
);

CREATE TABLE Armazenar (
    fk_Produto_idProduto INT not null,
    fk_Produto_idBebidas INT not null,
    fk_Produto_idBomboniere INT not null,
    fk_Produto_idSalgadinhos INT not null,
    fk_Produto_id_Itens_saudaveis INT not null,
    fk_Produto_idGomas_de_mascar INT not null,
    fk_Estoque_Empresa_idEstoque INT not null
);

CREATE TABLE atender (
    fk_Pessoa_idPessoa INT not null,
    fk_Pessoa_idCliente INT not null,
    fk_Pessoa_idFuncionario INT not null,
    fk_Pessoa_idMotoboy INT not null,
    fk_Pessoa_idPessoa_ INT not null,
    fk_Pessoa_idCliente_ INT not null,
    fk_Pessoa_idFuncionario_ INT not null,
    fk_Pessoa_idMotoboy_ INT not null
);

CREATE TABLE escolher (
    fk_Pessoa_idPessoa INT not null,
    fk_Pessoa_idCliente INT not null,
    fk_Pessoa_idFuncionario INT not null,
    fk_Pessoa_idMotoboy INT not null,
    fk_Produto_idProduto INT not null,
    fk_Produto_idBebidas INT not null,
    fk_Produto_idBomboniere INT not null,
    fk_Produto_idSalgadinhos INT not null,
    fk_Produto_id_Itens_saudaveis INT not null,
    fk_Produto_idGomas_de_mascar INT not null
);

CREATE TABLE separar (
    fk_Pessoa_idPessoa INT not null,
    fk_Pessoa_idCliente INT not null,
    fk_Pessoa_idFuncionario INT not null,
    fk_Pessoa_idMotoboy INT not null,
    fk_Pedido_idPedido INT not null
);

CREATE TABLE efetuar (
    fk_Pessoa_idPessoa INT not null,
    fk_Pessoa_idCliente INT not null,
    fk_Pessoa_idFuncionario INT not null,
    fk_Pessoa_idMotoboy INT not null,
    fk_Pagamento_idPagamento INT not null
);

CREATE TABLE receber (
    fk_Pagamento_idPagamento INT not null,
    fk_Empresa_idEmpresa INT not null,
    fk_Empresa_idLoja_de_doces INT not null,
    fk_Empresa_idFornecedor INT not null
);

CREATE TABLE fornecer (
    fk_Produto_idProduto INT not null,
    fk_Produto_idBebidas INT not null,
    fk_Produto_idBomboniere INT not null,
    fk_Produto_idSalgadinhos INT not null,
    fk_Produto_id_Itens_saudaveis INT not null,
    fk_Produto_idGomas_de_mascar INT not null,
    fk_Empresa_idEmpresa INT not null,
    fk_Empresa_idLoja_de_doces INT not null,
    fk_Empresa_idFornecedor INT not null
);

CREATE TABLE fazer (
    fk_Pessoa_idPessoa INT not null,
    fk_Pessoa_idCliente INT not null,
    fk_Pessoa_idFuncionario INT not null,
    fk_Pessoa_idMotoboy INT not null,
    fk_Entrega_idEntrega INT not null
);

CREATE TABLE obter (
    fk_Pessoa_idPessoa INT not null,
    fk_Pessoa_idCliente INT not null,
    fk_Pessoa_idFuncionario INT not null,
    fk_Pessoa_idMotoboy INT not null,
    fk_Entrega_idEntrega INT not null
);

CREATE TABLE pertencer (
    fk_Pedido_idPedido INT not null,
    fk_Entrega_idEntrega INT not null
);
 