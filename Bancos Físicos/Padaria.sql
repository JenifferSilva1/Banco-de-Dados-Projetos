create schema padaria;
CREATE TABLE Pagamento (
    idPagamento INT not null unique auto_increment,
    dataPagamento DATE not null,
    nota_fisca_lPagamento DOUBLE not null,
    valorPagamento FLOAT not null,
    fk_forma_de_Pagamento_forma_de_Pagamento_PK INT not null,
    PRIMARY KEY(idPagamento)
);

CREATE TABLE Compra (
    idCompra INT not null unique auto_increment,
    numeroCompra INT not null,
    quantidadeCompra INT not null,
    dataCompra DATE not null,
    precoCompra FLOAT not null,
    PRIMARY KEY(idCompra)
);

CREATE TABLE Estoque (
    idEstoque INT,
    quantidade_Estoque INT not null,
    PRIMARY KEY (idEstoque)
);

CREATE TABLE entrega (
    idDelivery INT not null unique auto_increment,
    freteEntrega FLOAT not null,
    PRIMARY KEY(idDelivery)
);

CREATE TABLE Produto (
    marcaProduto VARCHAR (100) not null,
    tipoProduto VARCHAR (100) not null,
    nomeProduto VARCHAR (50) not null,
    precoProduto FLOAT not null,
    idProduto INT,
    validadeProduto DATE not null,
    idMercearia INT ,
    idFrios INT,
    idTabacaria INT,
    idPaes_e_Doces INT,
    idBebidas INT,
    id_HigientePessoal INT,
    Produto_TIPO INT not null,
    PRIMARY KEY (idProduto, idMercearia, idFrios, idTabacaria, idPaes_e_Doces, idBebidas, id_HigientePessoal)
);

CREATE TABLE Pessoa (
    rg VARCHAR (12) not null, 
    sexo ENUM ('M', 'F') not null,
    cpf VARCHAR (14) not null, 
    telefone INT not null,
    fk_endereco_endereco_PK INT not null,
    idPessoa INT,
    datanasc DATE not null,
    nome VARCHAR (50) not null,
    idCliente INT,
    idFuncionario INT,
    cargoFuncionario VARCHAR (50) not null,
    ctpsFuncionario VARCHAR (12) not null,
    Pessoa_TIPO INT not null,
    PRIMARY KEY (idPessoa, idCliente, idFuncionario)
);

CREATE TABLE Empresa (
    cnpjEmpresa VARCHAR (18) not null,
    fk_enderecoEmpresa_enderecoEmpresa_PK INT not null,
    idEmpresa INT,
    telefoneEmpresa INT not null,
    nomeEmpresa VARCHAR (50) not null,
    idPadaria INT,
    idFornecedor INT,
    Empresa_TIPO INT not null,
    PRIMARY KEY (idEmpresa, idPadaria, idFornecedor)
);

CREATE TABLE Motoboy (
    MarcaMotoboy VARCHAR (50) not null,
    RenavanMotoboy VARCHAR (9) not null,
    Observacao VARCHAR (255) not null,
    ChassiMotoboy VARCHAR (17) not null,
    ModeloMotoboy VARCHAR (50) not null,
    idMotoboy INT not null unique auto_increment,
    PlacaMotoboy VARCHAR (7) not null,
    CnhMotoboy VARCHAR (12),
    PRIMARY KEY (idMotoboy)
    
);

CREATE TABLE endereco (
    endereco_PK INT not null,
    numero VARCHAR (10) not null,
    complemento VARCHAR (10) not null,
    cep VARCHAR (9) not null,
    rua VARCHAR (50)
    
);

CREATE TABLE enderecoEmpresa (
    enderecoEmpresa_PK INT NOT NULL PRIMARY KEY not null,
    Numero VARCHAR (10) not null,
    Bairro VARCHAR (50) not null,
    CEP VARCHAR (9) not null,
    Complemento VARCHAR (10) not null,
    Rua VARCHAR (50)
);

CREATE TABLE fornecer (
    fk_Produto_idProduto INT not null,
    fk_Produto_idMercearia INT not null,
    fk_Produto_idFrios INT not null,
    fk_Produto_idTabacaria INT not null,
    fk_Produto_idPaes_e_Doces INT not null,
    fk_Produto_idBebidas INT not null,
    fk_Produto_id_HigientePessoal INT not null,
    fk_Empresa_idEmpresa INT not null,
    fk_Empresa_idPadaria INT not null,
    fk_Empresa_idFornecedor INT not null
);

CREATE TABLE amarzenar (
    fk_Estoque_idEstoque INT not null,
    fk_Produto_idProduto INT not null,
    fk_Produto_idMercearia INT not null,
    fk_Produto_idFrios INT not null,
    fk_Produto_idTabacaria INT not null,
    fk_Produto_idPaes_e_Doces INT not null,
    fk_Produto_idBebidas INT not null,
    fk_Produto_id_HigientePessoal INT not null
);

CREATE TABLE pertencer (
    fk_Estoque_idEstoque INT not null,
    fk_Empresa_idEmpresa INT not null,
    fk_Empresa_idPadaria INT not null,
    fk_Empresa_idFornecedor INT not null
);

CREATE TABLE escolher (
    fk_Pessoa_idPessoa INT not null,
    fk_Pessoa_idCliente INT not null,
    fk_Pessoa_idFuncionario INT not null,
    fk_Produto_idProduto INT not null,
    fk_Produto_idMercearia INT not null,
    fk_Produto_idFrios INT not null,
    fk_Produto_idTabacaria INT not null,
    fk_Produto_idPaes_e_Doces INT not null,
    fk_Produto_idBebidas INT not null,
    fk_Produto_id_HigientePessoal INT not null
);

CREATE TABLE separar (
    fk_Pessoa_idPessoa INT not null,
    fk_Pessoa_idCliente INT not null,
    fk_Pessoa_idFuncionario INT not null,
    fk_Compra_idCompra INT not null
);

CREATE TABLE atender (
    fk_Pessoa_idPessoa INT not null,
    fk_Pessoa_idCliente INT not null,
    fk_Pessoa_idFuncionario INT not null,
    fk_Pessoa_idPessoa_ INT not null,
    fk_Pessoa_idCliente_ INT not null,
    fk_Pessoa_idFuncionario_ INT not null
);

CREATE TABLE efetuar (
    fk_Pessoa_idPessoa INT not null,
    fk_Pessoa_idCliente INT not null,
    fk_Pessoa_idFuncionario INT not null,
    fk_Pagamento_idPagamento INT not null
);

CREATE TABLE receber (
    fk_Pagamento_idPagamento INT not null,
    fk_Empresa_idEmpresa INT not null,
    fk_Empresa_idPadaria INT not null,
    fk_Empresa_idFornecedor INT not null
);

CREATE TABLE entregar (
    fk_entrega_idDelivery INT not null,
    fk_Motoboy_idMotoboy INT not null
);

CREATE TABLE receber (
    fk_entrega_idDelivery INT not null,
    fk_Pessoa_idPessoa INT not null,
    fk_Pessoa_idCliente INT not null,
    fk_Pessoa_idFuncionario INT not null
);

CREATE TABLE pertencer (
    fk_Compra_idCompra INT not null,
    fk_entrega_idDelivery INT not null
);

CREATE TABLE Possuir (
    fk_Produto_idProduto INT not null,
    fk_Produto_idMercearia INT not null,
    fk_Produto_idFrios INT not null,
    fk_Produto_idTabacaria INT not null,
    fk_Produto_idPaes_e_Doces INT not null,
    fk_Produto_idBebidas INT not null,
    fk_Produto_id_HigientePessoal INT not null,
    fk_Compra_idCompra INT not null
);