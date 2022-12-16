create schema hospital;

CREATE TABLE Estoque (
    quantidadeMinimaEstoque INT not null,
    tipoProdutoEstoque VARCHAR(50) not null,
    produtoEstoque VARCHAR(50) not null,
    idEstoque INT not null unique auto_increment,
    quantidadeMaximaEstoque INT not null,
    codigoBarrasEstoque INT not null,
    fk_validadeEstoque_validadeEstoque_PK INT not null,
    PRIMARY KEY (idEstoque) 
);

CREATE TABLE Triagem (
    idTriagem INT not null unique auto_increment,
    avaliacaoTriagem VARCHAR(255) not null,
    nivelEmergenciaTriagem VARCHAR(25) not null, 
    PRIMARY KEY (idTriagem) 
);

CREATE TABLE Consulta (
    idConsulta INT not null unique auto_increment,
    procedimentoConsulta VARCHAR(255) not null,
    dataConsulta DATE not null,
    horaConsulta TIME not null,
    fk_precoConsulta_precoConsulta_PK INT not null,
    areaConsulta VARCHAR(50) not null,
    PRIMARY KEY (idConsulta) 
);

CREATE TABLE Medicamentos (
    idMedicamentos INT not null unique auto_increment,
    marcaMedicamentos VARCHAR(25) not null,
    tipoMedicamentos VARCHAR(50) not null,
    nomeMedicamentos VARCHAR(25) not null,
    registroMedicamentos FLOAT not null,
    validadeMedicamentos DATE not null,
    fk_precoMedicamentos_precoMedicamentos_PK INT  not null,
    fk_Estoque_idEstoque INT not null,
    PRIMARY KEY (idMedicamentos) 
);

CREATE TABLE Pagamento (
    tipoPagamento VARCHAR(10) not null,
    DataPagamento DATE not null,
    HoraPagamento TIME not null,
    idPagamento INT not null unique auto_increment,
    NumeroCompraPagamento INT not null,
    ValorPagamento FLOAT not null,
    fk_convenioPagamento_convenioPagamento_PK INT not null,
    PRIMARY KEY (idPagamento)
);

CREATE TABLE ConveniosAceitos (
    idConveniosAceitos INT not null unique auto_increment,
    nomeConveniosAceitos VARCHAR(25) not null,
    PRIMARY KEY (idConveniosAceitos)
);

CREATE TABLE Empresa (
    idEmpresa INT,
    fk_enderecoEmpresa_enderecoEmpresa_PK INT not null,
    cnpjEmpresa VARCHAR(18) not null,
    nomeEmpresa VARCHAR(50) not null,
    fk_telefoneEmpresa_telefoneEmpresa_PK INT not null,
    idFornecedor INT,
    fk_produtoFornecidoFornecedor_produtoFornecidoFornecedor_PK INT not null,
    fk_servicoFornecidoFornecedor_servicoFornecidoFornecedor_PK INT not null,
    idHospital INT,
    Empresa_TIPO INT not null,
    PRIMARY KEY (idEmpresa, idFornecedor, idHospital) 
);

CREATE TABLE Pessoa (
    fk_telefonePessoa_telefonePessoa_PK INT not null,
    fk_enderecoPessoa_enderecoPessoa_PK INT not null,
    sexoPessoa enum('m','f') not null,
    rgPessoa VARCHAR(12) not null,
    dataNascimentoPessoa DATE not null,
    idPessoa INT,
    cpfPessoa VARCHAR(14) not null,
    nomePessoa VARCHAR(50) not null,
    idPaciente INT,
    fk_carteirinhaPaciente_carteirinhaPaciente_PK INT not null,
    ctpsFuncionario VARCHAR(12) not null,
    cargoFuncionario VARCHAR(25) not null,
    idFuncionario INT,
    fk_crmFuncionario_crmFuncionario_PK INT not null,
    fk_creFuncionario_creFuncionario_PK INT not null,
    fk_registroDiplomaFuncionario_registroDiplomaFuncionario_PK INT not null,
    fk_areaAtuacaoFuncionario_areaAtuacaoFuncionario_PK INT not null,
    tipoContratoFuncionario VARCHAR(25) not null,
    salarioFuncionario FLOAT not null,
    turnoFuncionario VARCHAR(25) not null,
    Pessoa_TIPO INT not null,
    fk_Empresa_idEmpresa INT not null,
    fk_Empresa_idFornecedor INT not null,
    fk_Empresa_idHospital INT not null,
    PRIMARY KEY (idPessoa, idPaciente, idFuncionario)
);

CREATE TABLE crmFuncionario (
    crmFuncionario_PK INT NOT NULL,
    crmFuncionario VARCHAR(12) not null,
    PRIMARY KEY (crmFuncionario_PK)
);

CREATE TABLE creFuncionario (
    creFuncionario_PK INT NOT NULL,
    creFuncionario VARCHAR(18) not null,
    PRIMARY KEY (creFuncionario_PK)
);

CREATE TABLE registroDiplomaFuncionario (
    registroDiplomaFuncionario_PK INT NOT NULL,
    registroDiplomaFuncionario VARCHAR(5) not null,
    PRIMARY KEY (registroDiplomaFuncionario_PK)
);

CREATE TABLE areaAtuacaoFuncionario (
    areaAtuacaoFuncionario_PK INT NOT NULL,
    areaAtuacaoFuncionario VARCHAR(25) not null,
    PRIMARY KEY (areaAtuacaoFuncionario_PK)
);

CREATE TABLE validadeEstoque (
    validadeEstoque_PK INT NOT NULL,
    validadeEstoque DATE not null,
    PRIMARY KEY (validadeEstoque_PK)
);

CREATE TABLE precoConsulta (
    precoConsulta_PK INT NOT NULL,
    precoConsulta FLOAT not null,
    PRIMARY KEY (precoConsulta_PK)
);

CREATE TABLE precoMedicamentos (
    precoMedicamentos_PK INT NOT NULL,
    precoMedicamentos FLOAT not null,
    PRIMARY KEY (precoMedicamentos_PK)
);

CREATE TABLE convenioPagamento (
    convenioPagamento_PK INT NOT NULL,
    convenioPagamento VARCHAR(25) not null,
    PRIMARY KEY (convenioPagamento_PK)
);

CREATE TABLE produtoFornecidoFornecedor (
    produtoFornecidoFornecedor_PK INT NOT NULL,
    produtoFornecidoFornecedor VARCHAR(50) not null,
    PRIMARY KEY (produtoFornecidoFornecedor_PK)
);

CREATE TABLE servicoFornecidoFornecedor (
    servicoFornecidoFornecedor_PK INT NOT NULL,
    servicoFornecidoFornecedor VARCHAR(25) not null,
    PRIMARY KEY (servicoFornecidoFornecedor_PK)
);

CREATE TABLE enderecoEmpresa (
    enderecoEmpresa_PK INT NOT NULL,
    complemento VARCHAR(10) not null,
    cep VARCHAR(9) not null,
    bairro VARCHAR(50) not null,
    rua VARCHAR(50) not null,
    numero VARCHAR(10) not null,
    PRIMARY KEY (enderecoEmpresa_PK)
);

CREATE TABLE telefoneEmpresa (
    telefoneEmpresa_PK INT NOT NULL,
    telefoneEmpresa INT not null,
    PRIMARY KEY (telefoneEmpresa_PK)
);

CREATE TABLE telefonePessoa (
    telefonePessoa_PK INT NOT NULL,
    telefonePessoa INT not null,
    PRIMARY KEY (telefonePessoa_PK)
);

CREATE TABLE enderecoPessoa (
    enderecoPessoa_PK INT NOT NULL,
    rua VARCHAR(50) not null,
    cep VARCHAR(9) not null,
    complemento VARCHAR(10) not null,
    numero VARCHAR(10) not null,
    bairro VARCHAR(50) not null,
    PRIMARY KEY (enderecoPessoa_PK)
);

CREATE TABLE carteirinhaPaciente (
    carteirinhaPaciente_PK INT NOT NULL,
    carteirinhaPaciente VARCHAR(25) not null,
    PRIMARY KEY (carteirinhaPaciente_PK)
);

CREATE TABLE Cadastrar (
    fk_Pessoa_idPessoa INT not null,
    fk_Pessoa_idPaciente INT not null,
    fk_Pessoa_idFuncionario INT not null,
    fk_Pessoa_idPessoa_ INT not null,
    fk_Pessoa_idPaciente_ INT not null,
    fk_Pessoa_idFuncionario_ INT not null
);

CREATE TABLE Avaliar (
    fk_Pessoa_idPessoa INT not null,
    fk_Pessoa_idPaciente INT not null,
    fk_Pessoa_idFuncionario INT not null,
    fk_Triagem_idTriagem INT not null
);

CREATE TABLE Atender (
    fk_Pessoa_idPessoa INT not null,
    fk_Pessoa_idPaciente INT not null,
    fk_Pessoa_idFuncionario INT not null,
    fk_Consulta_idConsulta INT not null
);

CREATE TABLE Realizar (
    fk_Pessoa_idPessoa INT not null,
    fk_Pessoa_idPaciente INT not null,
    fk_Pessoa_idFuncionario INT not null,
    fk_Consulta_idConsulta INT not null
);

CREATE TABLE Fornecer (
    fk_Empresa_idEmpresa INT not null,
    fk_Empresa_idFornecedor INT not null,
    fk_Empresa_idHospital INT not null,
    fk_Medicamentos_idMedicamentos INT not null
);

CREATE TABLE Cobrir (
    fk_Pagamento_idPagamento INT not null,
    fk_ConveniosAceitos_idConveniosAceitos INT not null
);

CREATE TABLE Efetuar (
    fk_Pessoa_idPessoa INT not null,
    fk_Pessoa_idPaciente INT not null,
    fk_Pessoa_idFuncionario INT not null,
    fk_Pagamento_idPagamento INT not null
);

CREATE TABLE Aceitar (
    fk_Empresa_idEmpresa INT not null,
    fk_Empresa_idFornecedor INT not null,
    fk_Empresa_idHospital INT not null,
    fk_ConveniosAceitos_idConveniosAceitos INT not null
);

CREATE TABLE Receber (
    fk_Pagamento_idPagamento INT not null,
    fk_Empresa_idEmpresa INT not null,
    fk_Empresa_idFornecedor INT not null,
    fk_Empresa_idHospital INT not null
);

CREATE TABLE Pertencer (
    fk_Empresa_idEmpresa INT not null,
    fk_Empresa_idFornecedor INT not null,
    fk_Empresa_idHospital INT not null,
    fk_Estoque_idEstoque INT not null
);
 