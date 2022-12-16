CREATE TABLE Estoque_Empresa (
    qtdProduto INT,
    nomeProduto VARCHAR (50) not null,
    tipoProduto VARCHAR (50) not null,
    idProduto INT ,
    telefoneEmpresa VARCHAR (15) not null,
    cnpjEmpresa VARCHAR (18) not null,
    nomeEmpresa VARCHAR (50) not null,
    idEmpresa INT ,
    fk_enderecoEmpresa_enderecoEmpresa_PK INT,
    idPapelaria INT ,
    idFornecedor INT,
    Empresa_TIPO INT,
    PRIMARY KEY (idProduto, idEmpresa, idPapelaria, idFornecedor)
);

CREATE TABLE Entrega (
    idEntrega INT not null unique auto_increment,
    freteEntrega FLOAT,
    PRIMARY KEY (idEntrega)
);

CREATE TABLE Produto (
    marcaProduto VARCHAR (50) not null,
    nomeProduto VARCHAR (50) not null,
    modeloProduto VARCHAR (50) not null,
    tamanhoProduto VARCHAR (25) not null,
    tipoProduto VARCHAR (25) not null,
    idProduto INT,
    codigoBarrasProduto VARCHAR (20) not null,
    precoProduto float not null, 
    idInformatica INT,
    idPresente INT,
    idEscolar INT,
    idEscritorio INT,
    Produto_TIPO INT,
    PRIMARY KEY (idProduto, idInformatica, idPresente, idEscolar, idEscritorio)
);

CREATE TABLE Pessoa (
    rg VARCHAR (9) not null,
    nome VARCHAR (50) not null,
    sexo enum ('M', 'F') not null,
    datanasc DATE,
    idPessoa INT,
    fk_endereco_endereco_PK INT,
    cpf VARCHAR (14) not null,
    fk_telefone_telefone_PK INT,
    ctpsFuncionario VARCHAR (18) not null,
    idFuncionario INT,
    cargoFuncionario VARCHAR (25) not null,
    idCliente INT,
    ChassiMotoboy VARCHAR (17) not null,
    idMotoboy INT,
    ModeloMotoboy VARCHAR (25) not null,
    RenavanMotoboy VARCHAR (11) not null,
    CnhMotoboy VARCHAR (12) not null,
    PlacaMotoboy VARCHAR (7) not null,
    Observacao VARCHAR (50) not null,
    MarcaMotoboy VARCHAR (25) not null,
    Pessoa_TIPO INT,
    PRIMARY KEY (idPessoa, idFuncionario, idCliente, idMotoboy)
);

CREATE TABLE Pagamento (
    horaPagamento TIME,
    numeroCompra INT,
    valorPagamento FLOAT,
    tipoPagamento VARCHAR (15) not null, 
    dataPagamento DATE,
    idPagamento INT not null unique auto_increment, 
    PRIMARY KEY (idPagamento)
);

CREATE TABLE Pedidio (
    dataPedidio DATE,
    precoPedidio FLOAT,
    numeroPedidio INT not null,
    quantidadePedidio INT not null,
    idPedidio INT not null unique auto_increment, 
    PRIMARY KEY (idPedido)
);

CREATE TABLE endereco (
    endereco_PK INT NOT NULL ,
    numero VARCHAR (10) not null,
    rua VARCHAR (50) not null,
    cep VARCHAR (9) not null,
    complemento VARCHAR (15) not null,
    PRIMARY KEY (endereco_PK)
);

CREATE TABLE telefone (
    telefone_PK INT NOT NULL ,
    telefone INT not null,
    PRIMARY KEY(telefone_PK)
);

CREATE TABLE enderecoEmpresa (
    enderecoEmpresa_PK INT NOT NULL ,
    Bairro VARCHAR (50) not null ,
    Rua VARCHAR (50) not null,
    Complemento VARCHAR (50) not null,
    CEP VARCHAR (9) not null,
    Numero VARCHAR (15) not null,
    PRIMARY KEY(enderecoEmpresa_PK)
);

CREATE TABLE Receber (
    fk_Pessoa_idPessoa INT not null,
    fk_Pessoa_idFuncionario INT not null,
    fk_Pessoa_idCliente INT not null,
    fk_Pessoa_idMotoboy INT not null
);

CREATE TABLE Escolher (
    fk_Pessoa_idPessoa INT not null,
    fk_Pessoa_idFuncionario INT not null,
    fk_Pessoa_idCliente INT not null,
    fk_Pessoa_idMotoboy INT not null,
    fk_Produto_idProduto INT not null,
    fk_Produto_idInformatica INT not null,
    fk_Produto_idPresente INT not null,
    fk_Produto_idEscolar INT not null,
    fk_Produto_idEscritorio INT not null
);

CREATE TABLE Atender (
    fk_Pessoa_idPessoa INT not null,
    fk_Pessoa_idFuncionario INT not null,
    fk_Pessoa_idCliente INT not null,
    fk_Pessoa_idMotoboy INT not null, 
    fk_Pessoa_idPessoa_ INT not null,
    fk_Pessoa_idFuncionario_ INT not null,
    fk_Pessoa_idCliente_ INT not null,
    fk_Pessoa_idMotoboy_ INT not null
);

CREATE TABLE efetuar (
    fk_Pagamento_idPagamento INT not null,
    fk_Pessoa_idPessoa INT not null,
    fk_Pessoa_idFuncionario INT not null,
    fk_Pessoa_idCliente INT not null,
    fk_Pessoa_idMotoboy INT not null
);

CREATE TABLE armazenar (
    fk_Produto_idProduto INT not null,
    fk_Produto_idInformatica INT not null,
    fk_Produto_idPresente INT not null,
    fk_Produto_idEscolar INT not null,
    fk_Produto_idEscritorio INT not null,
    fk_Estoque_Empresa_idProduto INT not null
);

CREATE TABLE fornecer (
    fk_Empresa_idEmpresa INT not null,
    fk_Empresa_idPapelaria INT not null,
    fk_Empresa_idFornecedor INT not null,
    fk_Produto_idProduto INT not null,
    fk_Produto_idInformatica INT not null,
    fk_Produto_idPresente INT not null,
    fk_Produto_idEscolar INT not null,
    fk_Produto_idEscritorio INT not null
);

CREATE TABLE Entregar (
    fk_Pessoa_idPessoa INT not null,
    fk_Pessoa_idFuncionario INT not null,
    fk_Pessoa_idCliente INT not null,
    fk_Pessoa_idMotoboy INT not null
);

CREATE TABLE Receber (
    fk_Empresa_idEmpresa INT not null,
    fk_Empresa_idPapelaria INT not null,
    fk_Empresa_idFornecedor INT not null,
    fk_Pagamento_idPagamento INT not null
);

CREATE TABLE Pertencer (
    fk_Produto_idProduto INT not null,
    fk_Produto_idInformatica INT not null,
    fk_Produto_idPresente INT not null,
    fk_Produto_idEscolar INT not null,
    fk_Produto_idEscritorio INT not null,
    fk_Pedidio_idPedidio INT not null
);

CREATE TABLE Separar (
    fk_Pedidio_idPedidio INT not null,
    fk_Pessoa_idPessoa INT not null,
    fk_Pessoa_idFuncionario INT not null,
    fk_Pessoa_idCliente INT not null,
    fk_Pessoa_idMotoboy INT not null
);