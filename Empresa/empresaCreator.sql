create table if not exists Empregado (
	
	cpf bigint not null,
	nome varchar(15),
	sobrenome varchar(15),
	nascimento date,
	endereco varchar(60),
	sexo char,
	salario real,

	constraint pk_Empregado primary key (cpf)
); 

create table if not exists Departamento (

	cddepartamento int not null,
	dsddepartamento varchar(30),
	data_inicio_gerente date,
	cpfGerente bigint not null,

	constraint fk_Departamento_Empregado foreign key (cpfGerente) references Empregado(cpf),

	constraint pk_Departamento primary key (cddepartamento)
);

create table if not exists Localizacao_departamento (

	nrdepartamento int not null,
	localizacao varchar(20),

	constraint fk_Localizacao_departamento_Departamento foreign key (nrdepartamento) references Departamento(cddepartamento),

	constraint pk_Localizacao_departamento primary key (nrdepartamento,localizacao) 
);

create table if not exists Projeto (

	nrprojeto int not null,
	nmprojeto varchar(40),
	localizacaoprojeto varchar(20),
	nrdepartamento int not null,

	constraint fk_Projeto_Departamento foreign key (nrdepartamento) references Departamento (cddepartamento), 

	constraint pk_Projeto primary key (nrprojeto)
);

create table if not exists Trabalha_em (

	cpfEmpregado bigint not null,
	nrprojeto int not null,
	horas real,

	constraint fk_Trabalha_em_Empregado foreign key (cpfEmpregado) references Empregado(cpf),
	constraint fk_Trabalha_em_Projeto foreign key (nrprojeto) references Projeto(nrprojeto),

	constraint pk_Trabalha_em primary key (cpfEmpregado, nrprojeto)
);

create table if not exists Dependente (

	cpfEmpregado bigint not null,
	cddepartamento int not null,
	nmdependente varchar(20),
	sexo char,
	nascimento date,
	parentesco varchar (20),

	constraint fk_Dependente_Empregado foreign key (cpfEmpregado) references Empregado(cpf),
	
	constraint pk_Dependente primary key (cpfEmpregado, cddepartamento)
);

alter table Empregado add column cpfsuper bigint;
alter table Empregado add column cddepartamento int;
