CREATE SCHEMA `carn` DEFAULT CHARACTER SET utf8 ;

use carn;

# Escola( {CNPJ}, nome, nome_fantasia, cores_representativas, endereço)
create table if not exists Escola(
	
	CNPJ int unsigned not null,
	nome varchar(30) not null,
	nome_fantasia varchar(50) not null,
	cores_representativas varchar(25),
	endereço varchar(60),
	fundação year,
	primary key(CNPJ)
) default charset = utf8;

# Campeonato( {id}, ano, estado , data_inicio, data_fim, regulamento)
create table if not exists Campeonato(

	ano year default '2017',	
	estado enum('RJ','SP') default 'RJ',
	data_inicio date not null, 
	data_fim date not null,
	regulamento text,
	primary key(ano, estado)
) default charset = utf8;

# Sambódromo( {id}, nome, endereço, data_inauguração, capacidade)
create table if not exists Sambodromo(

	id int unsigned not null auto_increment,
	nome varchar(20) not null,
	endereço varchar(50) not null,	
	capacidade int unsigned not null,
	data_inauguração date not null,
	cidade varchar(25),
	primary key(id)
) default charset = utf8;

# Setores( Parcial(código), categoria, valor, capacidade, P(id_sambódromo) )
create table if not exists Setores(
	
	numero int unsigned not null auto_increment,
	categoria varchar(15) not null,
	valor int unsigned not null,
	capacidade int unsigned not null,
	id_sambodromo int unsigned,	
	foreign key(id_sambodromo) references Sambodromo(id),
	primary key(numero, id_sambodromo)
) default charset = utf8;

/*# Ingressa( {CNPJ Escola}, id_campeonato)
create table if not exists Ingressa(
	
	CNPJ_Escola int unsigned,
	id_Campeonato int unsigned,
	foreign key(CNPJ_Escola) references Escola(CNPJ),
	foreign key(id_Campeonato) references Campeonato(id),
	primary key(CNPJ_Escola)
) default charset = utf8;
*/

# Sediar( {id_sambódromo}, id_campeonato)
create table if not exists Sediar(

	id_Sambodromo int unsigned,
	ano year,	
	estado enum('RJ','SP'),
	foreign key(id_Sambodromo) references Sambodromo(id),
	foreign key(ano, estado) references Campeonato(ano, estado),
	primary key(id_Sambodromo)
) default charset = utf8;

# Pessoa( {CPF}, nome, endereço, nascimento, sexo, nacionalidade)
create table if not exists Pessoa(

	CPF int unsigned not null,
	nome varchar(20) not null,
	endereço varchar(15) not null,
	nascimento date not null,
	sexo enum('M','F') not null,
	nacionalidade varchar(30) default 'Brasileiro',
	primary key(CPF)
) default charset = utf8;

# Jurado( {CPF}, atividade)
create table if not exists Jurado(
	
	CPF_Jurado int unsigned not null,
	atividade varchar(20) not null,
	foreign key(CPF_Jurado) references Pessoa(CPF),
	primary key(CPF_Jurado)
) default charset = utf8;

# Participante( {CPF}, cargo, filiação)
create table if not exists Participante(

	CPF_Participante int unsigned not null,
	cargo varchar(20) not null,
	filiação date not null,
	foreign key(CPF_Participante) references Pessoa(CPF),
	primary key(CPF_Participante)
) default charset = utf8;

# Espectador( {CPF}, email, ingresso, telefone)
create table if not exists Espectador(

	CPF_Espectador int unsigned not null,
	email varchar(40),
	ingresso int unsigned not null,
	telefone int unsigned,
	foreign key(CPF_Espectador) references Pessoa(CPF),
	primary key(CPF_Espectador)
) default charset = utf8;

# Fundador( {CPF}, data_óbito) 
create table if not exists Fundador(

	CPF_Fundador int unsigned not null,
	data_óbito date not null,
	foreign key(CPF_Fundador) references Pessoa(CPF),
	primary key(CPF_Fundador) 
) default charset = utf8;

# Fundar( {CPF_Fundador, id_sambódromo})
create table if not exists Fundar(
	
	CPF_Fundador int unsigned,
	id_sambodromo int unsigned,
	foreign key(CPF_Fundador) references Fundador(CPF_Fundador),
	foreign key(id_sambodromo) references Sambodromo(id),
	primary key(CPF_Fundador, id_sambodromo)
) default charset = utf8;

# Filiar( {CPF_Participante}, CNPJ_Escola)
create table if not exists Filiar(

	CPF_Participante int unsigned,
	CNPJ_Escola int unsigned,
	foreign key(CPF_Participante) references Participante(CPF_Participante),
	foreign key(CNPJ_Escola) references Escola(CNPJ),
	primary key(CPF_Participante)
) default charset = utf8;

# Integrante( {id_Integrante}, CNPJ, id_campeonato, grupo, colocação, enredo, data_desfile, hora_inicio, hora_fim, tempo_desfile)
create table if not exists Integrante(

	id int unsigned not null auto_increment,
	grupo varchar(15) not null,
	colocação int unsigned,
	enredo varchar(20), 
	data_desfile date,
	hora_inicio time,
	hora_fim time,
	tempo_desfile time,

	CNPJ_integrante int unsigned,
	ano year,	
	estado enum('RJ','SP'),
	foreign key(CNPJ_integrante) references Escola(CNPJ),
	foreign key(ano,estado) references Campeonato(ano,estado),
	primary key(id)
) default charset = utf8;

# Julgar({id_Integrante}, CPF_Jurado, dia, nota, quesito)
create table if not exists Julgar(

	id int unsigned not null auto_increment,
	
	CPF_Jurado int unsigned,
	dia int unsigned not null,
	nota int unsigned not null,
	quesito varchar(20),
	
	foreign key(id) references Integrante(id),
	foreign key(CPF_Jurado) references Jurado(CPF_Jurado),
	primary key(id)
) default charset = utf8;

# SEI( {CPF_Espectador, id_integrante}, id_sambódromo, código_setores) 
create table if not exists SEI(

	id int unsigned not null auto_increment,
	CPF_Espectador int unsigned not null,
	id_Integrante int unsigned not null,	
	id_setores int unsigned not null,
	numero_setores int unsigned not null,

	foreign key(CPF_Espectador) references Espectador(CPF_Espectador),
	foreign key(id_Integrante) references Integrante(id),
	foreign key(numero_setores, id_setores) references Setores(numero, id_sambodromo),
	primary key(id)
) default charset = utf8;
