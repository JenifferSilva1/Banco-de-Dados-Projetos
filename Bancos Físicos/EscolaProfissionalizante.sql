create schema escolaProfissionalizante;

CREATE TABLE Pagamento (
    precoPagamento FLOAT not null,
    dataPagamento DATE not null,
    idPagamento INT not null unique auto_increment,
    nota_fiscal_Pagamento INT not null,
    forma_de_Pagamento VARCHAR (10) not null,
    numerotransacaoPagamento INT not null,
    primary key(idPagamento)
);

CREATE TABLE Matricula (
    idMatricula INT not null unique auto_increment,
    cursoMatricula VARCHAR (50) not null,
    turnoMatricula VARCHAR (10) not null,
    datamatriculaMatricula DATE not null,
    RAmatricula INT not null,
    fk_acesso_onlineMatricula_acesso_onlineMatricula_PK INT not null,
    PRIMARY KEY(idMatricula)
);

CREATE TABLE Cursos (
    idCursos INT not null unique auto_increment,
    tipoCursos VARCHAR (10) not null,
    precoCursos FLOAT not null,
    turnoCursos VARCHAR (10) not null,
    duracaoCursos VARCHAR (25) not null,
    nomeCursos VARCHAR (50) not null,
    PRIMARY KEY(idCursos)
);

CREATE TABLE Pessoa (
    id_Pessoa INT not null,
    RGPessoa VARCHAR (9) not null,
    CPFPessoa VARCHAR (14) not null,
    fk_enderecoPessoa_enderecoPessoa_PK VARCHAR (50) not null,
    nomePessoa VARCHAR (50) not null,
    fk_telefonePessoa_telefonePessoa_PK INT not null,
    sexoPessoa ENUM ('M', 'F') not null,
    datanascimentoPessoa DATE not null, 
    emailPessoa VARCHAR (50) not null,
    senhaPessoa VARCHAR (25) not null,
    idAluno INT not null,
    id_Funcionario INT not null,
    cargoFuncionario VARCHAR (25) not null,
    ctps_Funcionario INT not null,
    SalarioFuncionario FLOAT not null,
    turnoFuncionario VARCHAR (10) not null,
    tipocontratoFuncionario VARCHAR (50) not null,
    area_atuacaoFuncionario VARCHAR (50) not null,
    fk_diplomaFuncionario_diplomaFuncionario_PK VARCHAR (50) not null,
    Pessoa_TIPO VARCHAR (50) not null,
    fk_Empresa_Estoque_idEmpresa INT not null,
    fk_Empresa_Estoque_idFornecedor INT not null,
    fk_Empresa_Estoque_id_EscolaProfissionalizante INT not null,
    PRIMARY KEY (id_Pessoa, idAluno, id_Funcionario)
);

CREATE TABLE Produto (
    idProduto INT not null unique auto_increment,
    nomeProduto VARCHAR (50) not null,
    tipoProduto VARCHAR (50) not null,
    validadeProduto DATE not null,
    PRIMARY KEY(idProduto)
);

CREATE TABLE Empresa_Estoque (
    fk_telefoneEmpresa_telefoneEmpresa_PK INT,
    idEmpresa INT,
    nomeEmpresa VARCHAR (50) not null,
    cnpjEmpresa VARCHAR (18) not null,
    fk_enderecoEmpresa_enderecoEmpresa_PK INT,
    idFornecedor INT,
    cnpjFornecedor VARCHAR (18) not null,
    produtofornecido_Fornecedor VARCHAR (50) not null,
    servicoprestado_Fornecedor INT not null,
    id_EscolaProfissionalizante INT,
    nomefantasia_EscolaProfissionalizante VARCHAR (50) not null,
    fk_enderecoEscolaPro_enderecoEscolaPro_PK int,
    cnpj_EscolaProfissionalizante VARCHAR (18) not null,
    telefone_EscolaProfissionalizante INT not null,
    Empresa_TIPO INT not null,
    idEstoque INT,
    quantidadeEstoque INT not null,
    tipoprodutoEstoque VARCHAR (50) not null,
    nomeEstoque VARCHAR (255) not null,
    qtdminimaEstoque INT not null,
    qtdmaximaEstoque INT not null,
    fk_validade_validade_PK INT,
    PRIMARY KEY (idEmpresa, idFornecedor, id_EscolaProfissionalizante, idEstoque)
);

CREATE TABLE diplomaFuncionario (
    diplomaFuncionario_PK VARCHAR (25) NOT NULL PRIMARY KEY,
    diplomaFuncionario VARCHAR (25) not null
);

CREATE TABLE enderecoEscolaProfissionalizante (
    enderecoEscolaProfissionalizante_PK VARCHAR (50) NOT NULL,
    numero VARCHAR (10) not null,
    rua VARCHAR (50) not null,
    complemento VARCHAR (10) not null,
    cep VARCHAR (9) not null
);

CREATE TABLE acesso_onlineMatricula (
    acesso_onlineMatricula_PK INT NOT NULL PRIMARY KEY,
    email VARCHAR (50) not null,
    senha VARCHAR (50) not null
);

CREATE TABLE validade (
    validade_PK DATE NOT NULL PRIMARY KEY,
    validade DATE not null
);

CREATE TABLE enderecoPessoa (
    enderecoPessoa_PK VARCHAR (50) NOT NULL PRIMARY KEY,
    rua VARCHAR (50) not null,
    numero VARCHAR (10) not null,
    cep VARCHAR (9) not null,
    complemento VARCHAR (10) not null
);

CREATE TABLE telefonePessoa (
    telefonePessoa_PK INT NOT NULL,
    telefonePessoa INT not null
);

CREATE TABLE telefoneEmpresa (
    telefoneEmpresa_PK INT NOT NULL,
    telefoneEmpresa INT not null
);

CREATE TABLE enderecoEmpresa (
    enderecoEmpresa_PK VARCHAR (50) NOT NULL PRIMARY KEY,
    rua VARCHAR (50) not null
);

CREATE TABLE realizar (
    fk_Matricula_idMatricula INT not null,
    fk_Pessoa_id_Pessoa INT not null,
    fk_Pessoa_idAluno INT not null,
    fk_Pessoa_id_Funcionario INT not null
);

CREATE TABLE receber (
    fk_Empresa_Estoque_idEmpresa INT not null,
    fk_Empresa_Estoque_idFornecedor INT not null,
    fk_Empresa_Estoque_id_EscolaProfissionalizante INT not null,
    fk_Pagamento_idPagamento INT not null
);

CREATE TABLE efetuar (
    fk_Pagamento_idPagamento INT not null,
    fk_Pessoa_id_Pessoa INT not null,
    fk_Pessoa_idAluno INT not null,
    fk_Pessoa_id_Funcionario INT not null
);

CREATE TABLE escolher (
    fk_Cursos_idCursos INT not null,
    fk_Pessoa_id_Pessoa INT not null,
    fk_Pessoa_idAluno INT not null,
    fk_Pessoa_id_Funcionario INT not null
);

CREATE TABLE armazenar (
    fk_Produto_idProduto INT not null,
    fk_Estoque_idEstoque INT not null
);

CREATE TABLE registrar (
    fk_Cursos_idCursos INT not null,
    fk_Matricula_idMatricula INT not null
);

CREATE TABLE ministrar (
    fk_Cursos_idCursos INT not null,
    fk_Pessoa_id_Pessoa INT not null,
    fk_Pessoa_idAluno INT not null,
    fk_Pessoa_id_Funcionario INT not null
);

CREATE TABLE fornecer (
    fk_Produto_idProduto INT not null,
    fk_Empresa_Estoque_idEmpresa INT not null,
    fk_Empresa_Estoque_idFornecedor INT not null,
    fk_Empresa_Estoque_id_EscolaProfissionalizante INT not null,
    fk_Empresa_Estoque_idEstoque INT not null
);
 