CREATE TABLE Pedido (
    idPedido INT not null unique auto_increment,
    qtdPedido VARCHAR (255) not null,
    precoFinal FLOAT,
    numeroPedido INT not null,
    dataPedidio DATE,
    primary key (idPedido)
);

CREATE TABLE Entrega (
    idEntrega INT not null unique auto_increment,
    numeroPedido INT,
    freteEntrega FLOAT,
    primary key (idEntrega)
);

CREATE TABLE Pagamento (
    numeroCompra INT not null,
    tipoPagamento VARCHAR (10) not null,
    dataPagamento DATE,
    idPagamento INT not null unique auto_increment,
    valorPagamento FLOAT,
    horaPagamento TIME,
    primary key (idPagamento)
);

CREATE TABLE Empresa_Estoque (
    cnpjEmpresa VARCHAR (18) not null,
    idEmpresa INT,
    nomeEmpresa VARCHAR (50) not null,
    fk_enderecoEmpresa_enderecoEmpresa_PK INT,
    telefoneEmpresa INT,
    idRestaurante INT,
    idFornecedor INT,
    Empresa_TIPO INT not null,
    idProduto INT,
    qtdProduto INT not null,
    tipoProduto VARCHAR (50) not null,
    nomeProduto VARCHAR (50) not null,
    PRIMARY KEY (idEmpresa, idRestaurante, idFornecedor, idProduto)
);

CREATE TABLE Pessoa (
    telefone INT not null,
    fk_endereco_endereco_PK INT,
    sexo enum ('F','M') not null,
    datanasc DATE,
    idPessoa INT,
    nome VARCHAR (50) not null,
    rg VARCHAR (12) not null,
    cpf VARCHAR (14) not null,
    idCliente INT,
    ctpsFuncionario VARCHAR (12) not null,
    idFuncionario INT,
    cargoFuncionario VARCHAR (50) not null,
    PlacaMotoboy VARCHAR (7) not null,
    MarcaMotoboy VARCHAR (50) not null,
    ModeloMotoboy VARCHAR (50) not null,
    Observacao VARCHAR (255) not null,
    ChassiMotoboy VARCHAR (17) not null,
    idMotoboy INT,
    CnhMotoboy VARCHAR (12) not null,
    RenavanMotoboy VARCHAR (11) not null,
    Pessoa_TIPO VARCHAR (50) not null,
    PRIMARY KEY (idPessoa, idCliente, idFuncionario, idMotoboy)
);

CREATE TABLE Produto (
    tipoProduto INT,
    marcaProduto VARCHAR (50) not null,
    precoProduto FLOAT,
    validadeProduto DATE,
    nomeProduto VARCHAR (50) not null,
    idProduto INT,
    idCardapio INT,
    idBebidas INT,
    Produto_TIPO INT,
    PRIMARY KEY (idProduto, idCardapio, idBebidas)
);

CREATE TABLE enderecoEmpresa (
    enderecoEmpresa_PK INT NOT NULL,
    Numero VARCHAR (10) not null,
    CEP VARCHAR (9) not null,
    Rua VARCHAR (50) not null,
    Complemento VARCHAR (10) not null,
    Bairro VARCHAR (50) not null,
    PRIMARY KEY (enderecoEmpresa_PK)
);

CREATE TABLE endereco (
    endereco_PK INT not null unique auto_increment,
    rua VARCHAR (50) not null,
    cep VARCHAR (9) not null,
    complemento VARCHAR (10) not null,
    numero VARCHAR (10) not null,
    PRIMARY KEY (endereco_PK)
);

CREATE TABLE Preparar (
    fk_Pedido_idPedido INT not null,
    fk_Pessoa_idPessoa INT not null,
    fk_Pessoa_idCliente INT not null,
    fk_Pessoa_idFuncionario INT not null,
    fk_Pessoa_idMotoboy INT not null
);

CREATE TABLE Escolher (
    fk_Pessoa_idPessoa INT not null,
    fk_Pessoa_idCliente INT not null,
    fk_Pessoa_idFuncionario INT not null,
    fk_Pessoa_idMotoboy INT not null,
    fk_Produto_idProduto INT not null,
    fk_Produto_idCardapio INT not null,
    fk_Produto_idBebidas INT not null
);

CREATE TABLE Receber (
    fk_Entrega_idEntrega INT not null,
    fk_Pessoa_idPessoa INT not null,
    fk_Pessoa_idCliente INT not null,
    fk_Pessoa_idFuncionario INT not null,
    fk_Pessoa_idMotoboy INT not null
);

CREATE TABLE Pertencer (
    fk_Pedido_idPedido INT not null,
    fk_Produto_idProduto INT not null,
    fk_Produto_idCardapio INT not null,
    fk_Produto_idBebidas INT not null
);

CREATE TABLE Realizar (
    fk_Pessoa_idPessoa INT not null,
    fk_Pessoa_idCliente INT not null,
    fk_Pessoa_idFuncionario INT not null,
    fk_Pessoa_idMotoboy INT not null,
    fk_Pagamento_idPagamento INT not null
);

CREATE TABLE Receber (
    fk_Pagamento_idPagamento INT not null,
    fk_Empresa_Estoque_idEmpresa INT not null,
    fk_Empresa_Estoque_idRestaurante INT not null,
    fk_Empresa_Estoque_idFornecedor INT not null,
    fk_Empresa_Estoque_idProduto INT not null
);

CREATE TABLE Pertencer (
    fk_Pedido_idPedido INT not null,
    fk_Entrega_idEntrega INT not null
);

CREATE TABLE Fornecer (
    fk_Empresa_Estoque_idEmpresa INT not null,
    fk_Empresa_Estoque_idRestaurante INT not null,
    fk_Empresa_Estoque_idFornecedor INT not null,
    fk_Empresa_Estoque_idProduto INT not null,
    fk_Produto_idProduto INT not null,
    fk_Produto_idCardapio INT not null,
    fk_Produto_idBebidas INT not null
);

CREATE TABLE Amarzenar (
    fk_Produto_idProduto INT not null,
    fk_Produto_idCardapio INT not null,
    fk_Produto_idBebidas INT not null,
    fk_Empresa_Estoque_idEmpresa INT not null,
    fk_Empresa_Estoque_idRestaurante INT not null,
    fk_Empresa_Estoque_idFornecedor INT not null,
    fk_Empresa_Estoque_idProduto INT not null
);

CREATE TABLE Entregar (
    fk_Entrega_idEntrega INT not null ,
    fk_Pessoa_idPessoa INT not null,
    fk_Pessoa_idCliente INT not null,
    fk_Pessoa_idFuncionario INT not null,
    fk_Pessoa_idMotoboy INT not null
);