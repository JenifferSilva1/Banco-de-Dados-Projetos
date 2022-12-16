create schema livraria; 

CREATE TABLE Pessoa (
    idCliente INT not null,
    nomeCliente VARCHAR (50) not null,
    emailCliente VARCHAR (50) not null,
    fk_telefoneCliente_telefoneCliente_PK INT not null,
    fk_enderecoCliente_enderecoCliente_PK VARCHAR (50) not null,
    codigoCliente INT not null,
    idJuridico INT not null,
    CNPJ_Juridico VARCHAR (18) not null,
    IE_Juridico VARCHAR (20) not null,
    fk_cnhFuncionario_cnhFuncionario_PK VARCHAR (12) not null,
    ctps_Funcionario VARCHAR (12) not null,
    cargoFuncionario VARCHAR (25) not null,
    idMotoboy INT not null,
    obsMotoboy VARCHAR (255) not null,
    chassiMotoboy VARCHAR (17) not null,
    placaMotoboy VARCHAR (9) not null,
    modeloMotoboy VARCHAR (50) not null,
    renavanMotoboy INT not null,
    marcaMotoboy VARCHAR (50) not null,
    Pessoa_TIPO VARCHAR (50) not null,
    PRIMARY KEY (idCliente, idJuridico, idMotoboy)
);

CREATE TABLE Pedido (
    numPedido INT not null,
    codigoPedido INT not null,
    dataPedido DATE not null,
    horaPedido TIME not null,
    precoPedido FLOAT not null,
    idPedido INT not null unique auto_increment,
    PRIMARY KEY (idPedido)
);

CREATE TABLE Livro (
    editoraLivro VARCHAR (50) not null,
    nomeLivro VARCHAR (50) not null,
    autorLivro VARCHAR (25) not null,
    precoLivro FLOAT not null,
    categoriaLivro VARCHAR (50) not null,
    anoLivro DATE not null,
    codigoLivro INT not null,
    idLivro INT not null,
    PRIMARY KEY(idLivro)
);

CREATE TABLE Estoque (
    codigolivroEstoque INT not null,
    quantidadeEstoque INT not null,
    idEstoque INT not null,
    PRIMARY KEY(idEstoque)
);

CREATE TABLE Editora (
    idEditora INT not null unique auto_increment,
    nomeEditora VARCHAR (50) not null,
    emailEditora VARCHAR (50) not null,
    telefoneEditora INT not null,
    PRIMARY KEY(idEditora)
);

CREATE TABLE Fornecedor (
    fk_telefoneFornecedor_telefoneFornecedor_PK INT not null,
    produtofornecido_Fornecedor VARCHAR (50) not null,
    cnpjFornecedor VARCHAR (18) not null,
    fk_enderecoFornecedor_enderecoFornecedor_PK VARCHAR (50) not null,
    nomeFornecedor VARCHAR (50) not null,
    idFornecedor INT not null unique auto_increment,
    PRIMARY KEY(idFornecedor)
);

CREATE TABLE Entregar (
    idEntrega INT not null unique auto_increment,
    fk_telefone_Entrega_telefone_Entrega_PK INT not null,
    frete_Entrega FLOAT not null,
    fk_enderecoEntrega_enderecoEntrega_PK VARCHAR (50) not null,
    PRIMARY KEY (idEntrega)
);

CREATE TABLE Livraria (
    idLivraria INT not null unique auto_increment,
    fk_telefoneLivraria_telefoneLivraria_PK INT not null,
    fk_enderecoLivraria_enderecoLivraria_PK VARCHAR (50) not null,
    cnpjLivraria VARCHAR (18) not null,
    nomefantasiaLivraria VARCHAR (50) not null,
    PRIMARY KEY(idLivraria)
);

CREATE TABLE Pagamento (
    valorPagamento FLOAT not null,
    idPagamento INT not null unique auto_increment,
    nota_fisca_lPagamento INT not null,
    dataPagamento DATE not null,
    fk_forma_de_Pagamento_forma_de_Pagamento_PK INT not null,
    PRIMARY KEY(idPagamento)
);

CREATE TABLE telefoneCliente (
    telefoneCliente_PK INT not null,
    telefoneCliente INT not null,
    PRIMARY KEY(telefoneCliente_PK)
);

CREATE TABLE enderecoCliente (
    enderecoCliente_PK VARCHAR (50) not null,
    complemento VARCHAR (10) not null,
    numero VARCHAR (10) not null,
    bairro VARCHAR (50) not null,
    CEP VARCHAR (9) not null,
    PRIMARY KEY(enderecoCliente_PK)
);

CREATE TABLE cnhFuncionario (
    cnhFuncionario_PK VARCHAR (12) not null,
    cnhFuncionario VARCHAR (12) not null,
    PRIMARY KEY(cnhFuncionario_PK)
);

CREATE TABLE telefoneFornecedor (
    telefoneFornecedor_PK INT not null,
    telefoneFornecedor INT not null,
    PRIMARY KEY(telefoneFornecedor_PK)
);

CREATE TABLE enderecoFornecedor (
    enderecoFornecedor_PK VARCHAR (50) not null,
    cep VARCHAR (9) not null,
    complemento VARCHAR (10) not null,
    rua VARCHAR (50) not null,
    numero VARCHAR (10) not null,
    PRIMARY KEY(enderecoFornecedor_PK)
);

CREATE TABLE telefone_Entrega (
    telefone_Entrega_PK INT not null,
    telefone_Entrega INT not null,
     PRIMARY KEY(telefone_Entrega_PK)
);

CREATE TABLE enderecoEntrega (
    enderecoEntrega_PK VARCHAR (50) not null,
    rua VARCHAR (50) not null,
    cep VARCHAR (9) not null,
    numero VARCHAR (10) not null,
    complemento VARCHAR (10) not null,
    PRIMARY KEY(enderecoEntrega_PK)
);

CREATE TABLE telefoneLivraria (
    telefoneLivraria_PK INT not null,
    telefoneLivraria INT not null,
    PRIMARY KEY(telefoneLivraria_PK)
);

CREATE TABLE enderecoLivraria (
    enderecoLivraria_PK VARCHAR (50) not null,
    complemento VARCHAR (10) not null,
    numero VARCHAR (10) not null,
    bairro VARCHAR (50) not null,
    CEP VARCHAR (9) not null,
    PRIMARY KEY(enderecoLivraria_PK)
);

CREATE TABLE realizar (
    fk_Pessoa_idCliente INT not null,
    fk_Pessoa_idJuridico INT not null,
    fk_Pessoa_idMotoboy INT not null,
    fk_Pedido_idPedido INT not null
);

CREATE TABLE pertencer (
    fk_Livro_idLivro INT not null,
    fk_Editora_idEditora INT not null
);

CREATE TABLE existir (
    fk_Estoque_idEstoque INT not null,
    fk_Livro_idLivro INT not null
);

CREATE TABLE conter (
    fk_Livro_idLivro INT not null,
    fk_Pedido_idPedido INT not null
);

CREATE TABLE providenciar (
    fk_Livro_idLivro INT not null,
    fk_Fornecedor_idFornecedor INT not null
);

CREATE TABLE prestar (
    fk_Pessoa_idCliente INT not null,
    fk_Pessoa_idJuridico INT not null,
    fk_Pessoa_idMotoboy INT not null,
    fk_Entrega_idEntrega INT not null
);

CREATE TABLE referir (
    fk_Entrega_idEntrega INT not null,
    fk_Pedido_idPedido INT not null
);

CREATE TABLE receber (
    fk_Entrega_idEntrega INT not null,
    fk_Pessoa_idCliente INT not null,
    fk_Pessoa_idJuridico INT not null,
    fk_Pessoa_idMotoboy INT not null
);

CREATE TABLE ter (
    fk_Estoque_idEstoque INT not null,
    fk_Livraria_idLivraria INT not null
);

CREATE TABLE Adquirir (
    fk_Pagamento_idPagamento INT not null,
    fk_Livraria_idLivraria INT not null
);

CREATE TABLE efetuar (
    fk_Pagamento_idPagamento INT not null,
    fk_Pessoa_idCliente INT not null,
    fk_Pessoa_idJuridico INT not null,
    fk_Pessoa_idMotoboy INT not null
);