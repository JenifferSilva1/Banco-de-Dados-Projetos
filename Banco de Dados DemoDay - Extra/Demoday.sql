create schema DemoDay;

CREATE TABLE Pessoa (
    emailPessoa VARCHAR (50) not null,
    datanascPessoa DATE not null,
    SenhaPessoa VARCHAR (20) not null,
    sexoPessoa VARCHAR (15) not null,
    nomePessoa VARCHAR (100) not null,
    UsuarioPessoa VARCHAR (50) not null,
    cpfPessoa VARCHAR (14) not null,
    fk_telefonePessoa_telefonePessoa_PK INT not null,
    idPessoa INT not null,
    enderecoPessoa VARCHAR (50) not null,
    cargoFuncionario VARCHAR (25) not null,
    idFuncionario INT not null,
    fk_certificacao_certificacao_PK INT not null,
    idManicure INT not null,
    Pessoa_TIPO INT not null,
    id_Desenvolvedor INT not null,
    id_podologa INT not null,
    fk_Agendamento_Empresa_SAC_idAgendamento INT not null,
    fk_Agendamento_Empresa_SAC_idEmpresa INT not null,
    fk_Agendamento_Empresa_SAC_idFornecedor INT not null,
    fk_Agendamento_Empresa_SAC_idDuasCamadas INT not null,
    fk_SAC_idSac INT not null,
    PRIMARY KEY (idPessoa, idFuncionario, idManicure, id_Desenvolvedor, id_podologa)
);

CREATE TABLE Cliente (
    idCliente INT not null unique auto_increment,
    PRIMARY KEY(idCliente)
);

CREATE TABLE Avaliacao (
    nota FLOAT not null,
    comentario VARCHAR (255) not null,
    idAvaliacao INT not null unique auto_increment,
    PRIMARY KEY(idAvaliacao)
);

CREATE TABLE Servicos (
    idServico INT not null,
    valorServico FLOAT not null,
    tipoServico VARCHAR (50) not null,
    PRIMARY KEY(idServico)
);

CREATE TABLE Agendamento_Empresa_SAC (
    horaAgendamento TIME not null,
    idAgendamento INT not null,
    dataAgendamento DATE not null,
    localAgendamento VARCHAR (50) not null,
    cnpjEmpresa VARCHAR (18) not null,
    idEmpresa INT not null,
    fk_enderecoEmpresa_enderecoEmpresa_PK INT not null,
    nomeEmpresa VARCHAR (100) not null,
    fk_telefoneEmpresa_telefoneEmpresa_PK INT not null,
    idFornecedor INT not null,
    idDuasCamadas INT not null,
    Empresa_TIPO VARCHAR (50) not null,
    idSac INT not null,
    horaSAC TIME not null,
    observacao VARCHAR (255) not null,
    dataSAC DATE not null,
    PRIMARY KEY (idAgendamento, idEmpresa, idFornecedor, idDuasCamadas, idSac)
);
 
CREATE TABLE Pagamento (
    valorPagamento FLOAT not null,
    numeroCompra INT not null,
    horaPagamento TIME not null,
    tipoPagamento VARCHAR (50) not null,
    idPagamento INT not null unique auto_increment,
    dataPagamento DATE not null,
    PRIMARY KEY(idPagamento)
);

CREATE TABLE Cadastro (
    idCadastro INT not null unique auto_increment,
    fk_Agendamento_Empresa_SAC_idAgendamento INT not null,
    fk_Agendamento_Empresa_SAC_idEmpresa INT not null,
    fk_Agendamento_Empresa_SAC_idFornecedor INT not null,
    fk_Agendamento_Empresa_SAC_idDuasCamadas INT not null,
    PRIMARY KEY(idCadastro)
);

CREATE TABLE Fidelizacao (
    idFidelizacao INT not null unique auto_increment,
    frequencia INT not null,
    PRIMARY KEY(idFidelizacao)
);

CREATE TABLE telefonePessoa (
    telefonePessoa_PK INT NOT NULL ,
    telefonePessoa VARCHAR (15) not null  
);

CREATE TABLE certificacao (
    certificacao_PK INT NOT NULL,
    certificacao VARCHAR (25) not null
);

CREATE TABLE enderecoEmpresa (
    enderecoEmpresa_PK INT NOT NULL,
    CEP VARCHAR (9) not null,
    Bairro VARCHAR (30) not null,
    Complemento VARCHAR (10) not null,
    Rua VARCHAR (50) not null,
    Numero VARCHAR (10) not null
);

CREATE TABLE telefoneEmpresa (
    telefoneEmpresa_PK INT NOT NULL,
    telefoneEmpresa INT not null
);

CREATE TABLE prestar (
    fk_Pessoa_idPessoa INT not null,
    fk_Pessoa_idFuncionario INT not null,
    fk_Pessoa_idManicure INT not null,
    fk_Pessoa_id_Desenvolvedor INT not null,
    fk_Pessoa_id_podologa INT not null,
    fk_Servicos_idServico INT not null
);

CREATE TABLE fazer (
    fk_Avaliacao_idAvaliacao INT not null,
    fk_Cliente_idCliente INT not null
);

CREATE TABLE solicitar (
    fk_Cliente_idCliente INT not null,
    fk_Agendamento_Empresa_SAC_idAgendamento INT not null
);

CREATE TABLE receber (
    fk_Avaliacao_idAvaliacao INT not null,
    fk_Pessoa_idPessoa INT not null,
    fk_Pessoa_idFuncionario INT not null,
    fk_Pessoa_idManicure INT not null,
    fk_Pessoa_id_Desenvolvedor INT not null,
    fk_Pessoa_id_podologa INT not null
);

CREATE TABLE concluir_Pessoa_Cadastro_Cliente (
    fk_Pessoa_idPessoa INT not null,
    fk_Pessoa_idFuncionario INT not null,
    fk_Pessoa_idManicure INT not null,
    fk_Pessoa_id_Desenvolvedor INT not null,
    fk_Pessoa_id_podologa INT not null,
    fk_Cadastro_idCadastro INT not null,
    fk_Cliente_idCliente INT not null
);

CREATE TABLE efetuar (
    fk_Pagamento_idPagamento INT not null,
    fk_Cliente_idCliente INT not null
);

CREATE TABLE obter (
    fk_Pagamento_idPagamento INT not null,
    fk_Pessoa_idPessoa INT not null,
    fk_Pessoa_idFuncionario INT not null,
    fk_Pessoa_idManicure INT not null,
    fk_Pessoa_id_Desenvolvedor INT not null,
    fk_Pessoa_id_podologa INT not null
);

CREATE TABLE escolher (
    fk_Servicos_idServico INT not null,
    fk_Cliente_idCliente INT not null
);

CREATE TABLE possuir (
    fk_Cliente_idCliente INT not null,
    fk_Fidelizacao_idFidelizacao INT not null
);

CREATE TABLE realizar (
    fk_Pessoa_idPessoa INT not null,
    fk_Pessoa_idFuncionario INT not null,
    fk_Pessoa_idManicure INT not null,
    fk_Pessoa_id_Desenvolvedor INT not null,
    fk_Pessoa_id_podologa INT not null,
    fk_Fidelizacao_idFidelizacao INT not null
);