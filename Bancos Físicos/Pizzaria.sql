create schema pizzaria;

CREATE TABLE Produto (
    idProduto INT,
    precoProduto FLOAT not null,
    saborProduto VARCHAR(255) not null,
    idPizza INT,
    tamanhoPizza VARCHAR(25) not null,
    quantidadePizza INT not null,
    idBebidas INT,
    marcaBebidas VARCHAR(255) not null,
    saborBebidas VARCHAR(200) not null,
    tipoBebidas VARCHAR(100) not null,
    volumeBebidas FLOAT not null,
    Produto_TIPO INT not null,
    fk_Cardapio_idCardapio INT not null,
    PRIMARY KEY (idProduto, idPizza, idBebidas)
);

CREATE TABLE Pedido (
    idPedido INT not null unique auto_increment,
    quantidadePedido INT not null,
    precoPedido FLOAT not null,
    PRIMARY KEY (idPedido)
);

CREATE TABLE Funcionario (
    idFuncionario INT not null,
    nomeFuncionario VARCHAR(50) not null,
    rgFuncionario VARCHAR(12) not null,
    cpfFuncionario VARCHAR(14) not null,
    ctpsFuncionario VARCHAR(12) not null,
    dataNascimentoFuncionario DATE not null,
    sexoFuncionario enum('f', 'm') not null,
    telefoneFuncionario INT not null,
    enderecoFuncionario VARCHAR(50) not null,
    cargoFuncionario VARCHAR(25) not null,
    PRIMARY KEY (idFuncionario)
);

CREATE TABLE Cliente (
    idCliente INT  not null,
    nomeCliente VARCHAR(50) not null,
    enderecoCliente VARCHAR(50) not null,
    telefoneCliente INT not null,
    cpfCliente VARCHAR(14) not null,
    PRIMARY KEY (idCliente)
);

CREATE TABLE Cardapio (
    idCardapio INT not null,
    tiposPizzaCardapio VARCHAR(255) not null,
    tiposBebidasCardapio VARCHAR(200) not null,
    PRIMARY KEY (idCardapio)
);

CREATE TABLE Pagamento (
    idPagamento INT not null,
    DataPagamento DATE not null,
    HoraPagamento TIME not null,
    ValorPagamento FLOAT not null,
    NumeroCompraPagamento INT not null,
    tipoPagamento VARCHAR(10) not null,
    PRIMARY KEY (idPagamento)
);

CREATE TABLE Entrega (
    idEntrega INT not null,
    dataEHoraSaida VARCHAR(50) not null,
    dataEhoraEntrega VARCHAR(50) not null,
    freteEntrega FLOAT not null,
    PRIMARY KEY (idEntrega)
);

CREATE TABLE Motoboy (
    idMotoboy INT not null,
    ChassiMotoboy VARCHAR(17) not null,
    PlacaMotoboy VARCHAR(7) not null,
    ModeloMotoboy VARCHAR(20) not null,
    RenavanMotoboy VARCHAR(11) not null,
    Observacao VARCHAR(255) not null,
    CnhMotoboy VARCHAR(12) not null,
    PRIMARY KEY (idMotoboy)
);

CREATE TABLE Empresa (
    fk_telefoneEmpresa_telefoneEmpresa_PK INT not null,
    fk_enderecoEmpresa_enderecoEmpresa_PK INT not null,
    idEmpresa INT,
    cnpjEmpresa VARCHAR(18) not null,
    nomeEmpresa VARCHAR(50) not null,
    produtoFornecidoFornecedor VARCHAR(50) not null,
    idFornecedor INT not null,
    idPizzaria INT not null,
    Empresa_TIPO INT not null,
    PRIMARY KEY (idEmpresa, idFornecedor, idPizzaria)
);

CREATE TABLE Estoque (
    quantidadeMaximaEstoque INT not null,
    idEstoque INT not null unique auto_increment,
    quantidadeMinimaEstoque INT not null,
    PRIMARY KEY (idEstoque)
);

CREATE TABLE telefoneEmpresa (
    telefoneEmpresa_PK INT NOT NULL not null,
    telefoneEmpresa INT not null
);

CREATE TABLE enderecoEmpresa (
    enderecoEmpresa_PK INT NOT NULL not null,
    bairro VARCHAR(50) not null,
    cep VARCHAR(10) not null,
    rua VARCHAR(50) not null,
    numero VARCHAR(10) not null,
    complemento VARCHAR(10) not null,
    PRIMARY KEY (enderecoEmpresa_PK)
);

CREATE TABLE Atender (
    fk_Funcionario_idFuncionario INT not null,
    fk_Cliente_idCliente INT not null
);

CREATE TABLE Anotar (
    fk_Funcionario_idFuncionario INT not null,
    fk_Pedido_idPedido INT not null
);

CREATE TABLE Fazer (
    fk_Pedido_idPedido INT not null,
    fk_Cliente_idCliente INT not null
);

CREATE TABLE Entregar (
    fk_Entrega_idEntrega INT not null,
    fk_Motoboy_idMotoboy INT not null
);

CREATE TABLE Pertencer (
    fk_Pedido_idPedido INT not null,
    fk_Cardapio_idCardapio INT not null
);

CREATE TABLE Efetuar (
    fk_Cliente_idCliente INT not null,
    fk_Pagamento_idPagamento INT not null
);

CREATE TABLE Fornecer (
    fk_Empresa_idEmpresa INT not null,
    fk_Empresa_idFornecedor INT not null,
    fk_Empresa_idPizzaria INT not null,
    fk_Produto_idProduto INT not null,
    fk_Produto_idPizza INT not null,
    fk_Produto_idBebidas INT not null
);

CREATE TABLE Receber (
    fk_Empresa_idEmpresa INT not null,
    fk_Empresa_idFornecedor INT not null,
    fk_Empresa_idPizzaria INT not null,
    fk_Pagamento_idPagamento INT not null
);

CREATE TABLE Pertencer (
    fk_Pedido_idPedido INT not null,
    fk_Entrega_idEntrega INT not null
);

CREATE TABLE Servir (
    fk_Funcionario_idFuncionario INT not null,
    fk_Pedido_idPedido INT not null
);

CREATE TABLE Armazenar (
    fk_Produto_idProduto INT not null,
    fk_Produto_idPizza INT not null,
    fk_Produto_idBebidas INT not null,
    fk_Estoque_idEstoque INT not null
);

CREATE TABLE Pertencer (
    fk_Estoque_idEstoque INT not null,
    fk_Empresa_idEmpresa INT not null,
    fk_Empresa_idFornecedor INT not null,
    fk_Empresa_idPizzaria INT not null
);
