create schema adega;

CREATE TABLE Cliente (
    idCliente INT not null unique auto_increment,
    PRIMARY KEY (idCliente)
);

CREATE TABLE Funcionario (
    cargoFuncionario VARCHAR(25) not null,
    tipoContratoFuncionario VARCHAR(25) not null,
    turnoFuncionario VARCHAR(10) not null,
    ctpsFuncionario VARCHAR(12) not null,
    salarioFuncionario FLOAT not null,
    idFuncionario INT not null unique auto_increment,
    PRIMARY KEY (idFuncionario) 
);

CREATE TABLE Pedido (
    idPedido INT not null unique auto_increment,
    numeroPedido INT not null,
    quantidadePedido INT not null,
    dataPedido DATE not null,
    precoPedido FLOAT not null,
    PRIMARY KEY (idPedido)
);

CREATE TABLE Estoque (
    idEstoque INT not null unique auto_increment,
    quantidadeMinimaEstoque INT not null,
    quantidadeMaximaEstoque INT not null,
    PRIMARY KEY (idEstoque)
);

CREATE TABLE Pessoa (
    sexoPessoa enum('m','f') not null,
    nomePessoa VARCHAR(50) not null,
    cpfPessoa VARCHAR(14) not null,
    fk_telefonePessoa_telefonePessoa_PK INT not null,
    rgPessoa VARCHAR(12) not null,
    dataNascimentoPessoa DATE not null,
    idPessoa INT not null,
    fk_enderecoPessoa_enderecoPessoa_PK INT not null,
    PRIMARY KEY (idPessoa)
);

CREATE TABLE Empresa (
    cnpjEmpresa VARCHAR(18) not null,
    fk_enderecoEmpresa_enderecoEmpresa_PK INT not null,
    nomeEmpresa VARCHAR(50) not null,
    idEmpresa INT,
    fk_telefoneEmpresa_telefoneEmpresa_PK INT not null,
    idFornecedor INT,
    produtoFornecidoFornecedor VARCHAR(50),
    idAdega INT,
    Empresa_TIPO INT not null,
    PRIMARY KEY (idEmpresa, idFornecedor, idAdega) 
);

CREATE TABLE Entrega (
    dataEhoraEntrega VARCHAR(25) not null,
    dataEHoraSaida VARCHAR(25) not null,
    freteEntrega FLOAT not null,
    idEntrega INT not null unique auto_increment,
    PRIMARY KEY (idEntrega)
);

CREATE TABLE Motoboy (
    Observacao VARCHAR(255) not null,
    ChassiMotoboy VARCHAR(17) not null,
    ModeloMotoboy VARCHAR(50) not null,
    idMotoboy INT not null unique auto_increment,
    PlacaMotoboy VARCHAR(7) not null,
    MarcaMotoboy VARCHAR(50) not null,
    CnhMotoboy VARCHAR(12) not null,
    RenavanMotoboy VARCHAR(11) not null,
    PRIMARY KEY (idMotoboy)
);

CREATE TABLE Produto (
    idProduto INT,
    tipoProduto VARCHAR(50) not null,
    marcaProduto VARCHAR(50) not null,
    nomeProduto VARCHAR(50) not null,
    validadeProduto DATE not null,
    precoProduto FLOAT not null,
    idBebidas INT,
    idTabacaria INT,
    idIngredientes INT,
    Produto_TIPO INT not null,
    PRIMARY KEY (idProduto, idBebidas, idTabacaria, idIngredientes)
);

CREATE TABLE Pagamento (
    idPagamento INT not null unique auto_increment,
    ValorPagamento FLOAT not null,
    NumeroCompraPagamento INT not null,
    DataPagamento DATE not null,
    tipoPagamento VARCHAR(10) not null,
    HoraPagamento TIME not null,
    PRIMARY KEY (idPagamento)
);

CREATE TABLE telefonePessoa (
    telefonePessoa_PK INT not null,
    telefonePessoa INT not null,
    PRIMARY KEY (telefonePessoa_PK) 
);

CREATE TABLE enderecoPessoa (
    enderecoPessoa_PK INT not null,
    complemento VARCHAR(10) not null,
    cep VARCHAR(9) not null,
    numero VARCHAR(10) not null,
    bairro VARCHAR(50) not null,
    rua VARCHAR(50) not null,
    PRIMARY KEY (enderecoPessoa_PK)
);

CREATE TABLE enderecoEmpresa (
    enderecoEmpresa_PK INT not null,
    complemento VARCHAR(10) not null,
    bairro VARCHAR(50) not null,
    rua VARCHAR(50) not null,
    cep VARCHAR(9) not null,
    numero VARCHAR(10) not null,
    PRIMARY KEY (enderecoEmpresa_PK)
);

CREATE TABLE telefoneEmpresa (
    telefoneEmpresa_PK INT not null,
    telefoneEmpresa INT not null,
    PRIMARY KEY( telefoneEmpresa_PK )
);

CREATE TABLE Entregar (
    fk_Motoboy_idMotoboy INT not null,
    fk_Entrega_idEntrega INT not null
);

CREATE TABLE Fazer (
    fk_Pedido_idPedido INT not null,
    fk_Cliente_idCliente INT not null
);

CREATE TABLE Pertencer (
    fk_Produto_idProduto INT not null,
    fk_Produto_idBebidas INT not null,
    fk_Produto_idTabacaria INT not null,
    fk_Produto_idIngredientes INT not null,
    fk_Pedido_idPedido INT not null
);

CREATE TABLE Armazenar (
    fk_Produto_idProduto INT not null,
    fk_Produto_idBebidas INT not null,
    fk_Produto_idTabacaria INT not null,
    fk_Produto_idIngredientes INT not null,
    fk_Estoque_idEstoque INT not null
);

CREATE TABLE Fornecer (
    fk_Produto_idProduto INT not null,
    fk_Produto_idBebidas INT not null,
    fk_Produto_idTabacaria INT not null,
    fk_Produto_idIngredientes INT not null,
    fk_Empresa_idEmpresa INT not null,
    fk_Empresa_idFornecedor INT not null,
    fk_Empresa_idAdega INT not null
);

CREATE TABLE Separar (
    fk_Pedido_idPedido INT not null,
    fk_Funcionario_idFuncionario INT not null
);

CREATE TABLE Efetuar (
    fk_Pagamento_idPagamento INT not null,
    fk_Cliente_idCliente INT not null
);

CREATE TABLE Receber (
    fk_Pagamento_idPagamento INT not null,
    fk_Empresa_idEmpresa INT not null,
    fk_Empresa_idFornecedor INT not null,
    fk_Empresa_idAdega INT not null
);

CREATE TABLE Adquirir (
    fk_Cliente_idCliente INT not null,
    fk_Entrega_idEntrega INT not null
);

CREATE TABLE Possuir (
    fk_Pedido_idPedido INT not null,
    fk_Entrega_idEntrega INT not null
);
 