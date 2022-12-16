CREATE TABLE Compra (
    idCompra INT not null unique auto_increment,
    numeroCompra INT not null,
    quantidadeCompra INT not null,
    dataCompra DATE,
    precoCompra FLOAT not null,
	PRIMARY KEY(idCompra)
);

CREATE TABLE Pagamento (
    idPagamento INT not null unique auto_increment,
    dataPagamento DATE,
    horaPagamento TIME,
    valorPagamento INT not null,
    numeroCompra INT not null,
    tipoPagamento VARCHAR (15) not null,
	PRIMARY KEY (idPagamento)
);

CREATE TABLE Estoque_Empresa (
    idEstoque INT ,
    quantidadeEstoque INT,
    idEmpresa INT,
    telefoneEmpresa INT,
    fk_enderecoEmpresa_enderecoEmpresa_PK INT,
    cnpjEmpresa VARCHAR (18) not null,
    nomeEmpresa VARCHAR (50) not null,
    idFornecedor INT,
    idMercado INT,
    Empresa_TIPO INT,
    PRIMARY KEY (idEstoque, idEmpresa, idFornecedor, idMercado)
);

CREATE TABLE Entrega (
    idEntrega INT not null unique auto_increment,
    freteEntrega FLOAT,
    numeroPedido VARCHAR (10) not null,
    PRIMARY KEY (idEntrega)
);

CREATE TABLE Produto (
    validadeProduto DATE,
    precoProduto FLOAT,
    marcaProduto VARCHAR (50) not null, 
    nomeProduto VARCHAR (50) not null,
    idProduto INT,
    tipoProduto VARCHAR (50) not null,
    idMercearia INT,
    idAcougue INT,
    idBebidas INT,
    idFrios INT,
    idCongelados INT,
    idPadaria INT,
    idHortifruti INT,
    idLimpeza INT,
    idhigienePessoal INT,
    Produto_TIPO INT,
    PRIMARY KEY (idProduto, idMercearia, idAcougue, idBebidas, idFrios, idCongelados, idPadaria, idHortifruti, idLimpeza, idhigienePessoal)
);

CREATE TABLE Pessoa (
    rg VARCHAR (12) not null,
    sexo enum('M','F') not null,
    nome VARCHAR (50) not null,
    cpf VARCHAR (14) not null,
    idPessoa INT,
    datanasc DATE,
    endereco VARCHAR (50) not null,
    telefone INT,
    idFuncionario INT,
    cargoFuncionario VARCHAR (50) not null,
    idCliente INT,
    PlacaMotoboy VARCHAR (9) not null,
    ChassiMotoboy VARCHAR (17) not null,
    Observacao VARCHAR (50) not null,
    MarcaMoto VARCHAR (50) not null,
    idMoto INT,
    ModeloMoto VARCHAR (50) not null,
    RenavanMoto VARCHAR (9) not null,
    CnhMoto VARCHAR (12) not null,
    Pessoa_TIPO VARCHAR (50) not null,
    PRIMARY KEY (idPessoa, idFuncionario, idCliente, idMoto)
);

CREATE TABLE enderecoEmpresa (
    enderecoEmpresa_PK INT,
    CEP VARCHAR (9) not null,
    Bairro VARCHAR (50) not null,
    Numero VARCHAR (15) not null,
    Rua VARCHAR (50) not null,
    Complemento VARCHAR (50) not null,
    PRIMARY KEY (enderecoEmpresa_PK)
);

CREATE TABLE Entregar (
    fk_Pessoa_idPessoa INT not null,
    fk_Pessoa_idFuncionario INT not null,
    fk_Pessoa_idCliente INT not null,
    fk_Pessoa_idMotoboy INT not null,
    fk_Entrega_idEntrega INT not null 
);

CREATE TABLE Separar (
    fk_Pessoa_idPessoa INT not null,
    fk_Pessoa_idFuncionario INT not null,
    fk_Pessoa_idCliente INT not null,
    fk_Pessoa_idMotoboy INT not null,
    fk_Compra_idCompra INT not null
);

CREATE TABLE Realizar (
    fk_Pessoa_idPessoa INT not null,
    fk_Pessoa_idFuncionario INT not null,
    fk_Pessoa_idCliente INT not null,
    fk_Pessoa_idMotoboy INT not null,
    fk_Pagamento_idPagamento INT not null
);

CREATE TABLE Escolher (
    fk_Produto_idProduto INT not null,
    fk_Produto_idMercearia INT not null,
    fk_Produto_idAcougue INT not null,
    fk_Produto_idBebidas INT not null,
    fk_Produto_idFrios INT not null,
    fk_Produto_idCongelados INT not null,
    fk_Produto_idPadaria INT not null,
    fk_Produto_idHortifruti INT not null,
    fk_Produto_idLimpeza INT not null,
    fk_Produto_idhigienePessoal INT not null, 
    fk_Pessoa_idPessoa INT not null,
    fk_Pessoa_idFuncionario INT not null,
    fk_Pessoa_idCliente INT not null,
    fk_Pessoa_idMotoboy INT not null
);

CREATE TABLE Pertencer (
    fk_Compra_idCompra INT not null, 
    fk_Produto_idProduto INT not null,
    fk_Produto_idMercearia INT not null,
    fk_Produto_idAcougue INT not null,
    fk_Produto_idBebidas INT not null,
    fk_Produto_idFrios INT not null,
    fk_Produto_idCongelados INT not null,
    fk_Produto_idPadaria INT not null,
    fk_Produto_idHortifruti INT not null,
    fk_Produto_idLimpeza INT not null,
    fk_Produto_idhigienePessoal INT
);

CREATE TABLE Fornecer (
    fk_Empresa_idEmpresa INT not null,  
    fk_Empresa_idFornecedor INT not null,
    fk_Empresa_idMercado INT not null,
    fk_Produto_idProduto INT not null,
    fk_Produto_idMercearia INT not null, 
    fk_Produto_idAcougue INT not null,
    fk_Produto_idBebidas INT not null,
    fk_Produto_idFrios INT not null,
    fk_Produto_idCongelados INT not null,
    fk_Produto_idPadaria INT not null,
    fk_Produto_idHortifruti INT not null,
    fk_Produto_idLimpeza INT not null,
    fk_Produto_idhigienePessoal INT
);

CREATE TABLE Amarzenar (
    fk_Produto_idProduto INT not null,
    fk_Produto_idMercearia INT not null,
    fk_Produto_idAcougue INT not null,
    fk_Produto_idBebidas INT not null,
    fk_Produto_idFrios INT not null,
    fk_Produto_idCongelados INT not null,
    fk_Produto_idPadaria INT not null,
    fk_Produto_idHortifruti INT not null,
    fk_Produto_idLimpeza INT not null,
    fk_Produto_idhigienePessoal INT not null,
    fk_Estoque_Empresa_idEstoque INT not null
);

CREATE TABLE Recebeer (
    fk_Pagamento_idPagamento INT not null,
    fk_Estoque_Empresa_idEstoque INT not null,
    fk_Estoque_Empresa_idEmpresa INT not null,
    fk_Estoque_Empresa_idFornecedor INT not null, 
    fk_Estoque_Empresa_idMercado INT not null
);

CREATE TABLE Receber (
    fk_Entrega_idEntrega INT not null,
    fk_Pessoa_idPessoa INT not null,
    fk_Pessoa_idFuncionario INT not null,
    fk_Pessoa_idCliente INT not null,
    fk_Pessoa_idMotoboy INT not null
);