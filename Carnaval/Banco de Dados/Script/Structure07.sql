CREATE SCHEMA `carnaval` DEFAULT CHARACTER SET utf8 ;

use carnaval;

# 1) Escola( {CNPJ}, nome, nome_fantasia, cor1, cor2, cor3 endereço)
create table if not exists Escola(
	
	CNPJ int unsigned not null,
	nome varchar(30) not null,
	nome_fantasia varchar(50) not null,
	cor1 varchar(15) not null,
	cor2 varchar(15) not null,
	cor3 varchar(15),
 	endereço varchar(80),
	fundação year,
	primary key(CNPJ)
) default charset = utf8;

# 2)Campeonato( {ano, estado} , data_inicio, data_fim, regulamento)
create table if not exists Campeonato(

	ano year default '2017',	
	estado enum('RJ','SP') default 'RJ',
	data_inicio date not null, 
	data_fim date not null,
	regulamento text,
	primary key(ano, estado)
) default charset = utf8;

# 3)Sambódromo( id, nome, endereço, data_inauguração)
create table if not exists Sambodromo(

	id int unsigned not null auto_increment,
	nome varchar(50) not null,
	endereço varchar(80) not null,	
	data_inauguração date not null,
	cidade varchar(25),
	primary key(id)
) default charset = utf8;

# 4) Setores( Parcial(código), categoria, valor, capacidade, P(id_sambódromo) )
create table if not exists Setores(
	
	numero int unsigned not null auto_increment,
	categoria varchar(25) not null,
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

# 5)Sediar( {id_sambódromo, ano, estado})
create table if not exists Sediar(

	id_Sambodromo int unsigned,
	ano year,	
	estado enum('RJ','SP'),
	
	foreign key(id_Sambodromo) references Sambodromo(id),
	foreign key(ano, estado) references Campeonato(ano, estado),
	primary key(id_Sambodromo, ano, estado)
) default charset = utf8;

# 6)Pessoa( {CPF}, nome, sexo, endereço, nascimento, nacionalidade)
create table if not exists Pessoa(

	CPF int(11) unsigned not null,
	nome varchar(40) not null,
	endereço varchar(40) not null,
	nascimento date not null,
	sexo enum('M','F') not null,
	nacionalidade varchar(40) default 'Brasileiro',
	primary key(CPF)
) default charset = utf8;

# 7)Jurado( {CPF}, atividade)
create table if not exists Jurado(
	
	CPF_Jurado int unsigned not null,
	atividade varchar(80) not null,
	
	foreign key(CPF_Jurado) references Pessoa(CPF),
	primary key(CPF_Jurado)
) default charset = utf8;

# 8)Participante( {CPF}, cargo, filiação)
create table if not exists Participante(

	CPF_Participante int unsigned not null,
	cargo varchar(50),
	filiação date not null,
	
	foreign key(CPF_Participante) references Pessoa(CPF),
	primary key(CPF_Participante)
) default charset = utf8;

# 9)Espectador( {CPF}, email, ingresso, telefone)
create table if not exists Espectador(

	CPF_Espectador int unsigned not null,
	email varchar(80),
	ingresso int unsigned not null,
	telefone int(11) unsigned,
	
	foreign key(CPF_Espectador) references Pessoa(CPF),
	primary key(CPF_Espectador)
) default charset = utf8;

# 10)Fundador( {CPF}, data_óbito) 
create table if not exists Fundador(

	CPF_Fundador int unsigned not null,
	data_óbito date,
	
	foreign key(CPF_Fundador) references Pessoa(CPF),
	primary key(CPF_Fundador) 
) default charset = utf8;

# 11)Fundar( {CPF_Fundador, id_sambódromo})
create table if not exists Fundar(
	
	CPF_Fundador int unsigned,
	id_sambodromo int unsigned,
	
	foreign key(CPF_Fundador) references Fundador(CPF_Fundador),
	foreign key(id_sambodromo) references Sambodromo(id),
	primary key(CPF_Fundador, id_sambodromo)
) default charset = utf8;

# 12)Filiar( {CPF_Participante},  CNPJ_Escola, data_filiação, data_desfiliação )
create table if not exists Filiar(

	CPF_Participante int unsigned not null,
	CNPJ_Escola int unsigned not null,
	filiação year not null,
	data_desfiliação year,
	
	foreign key(CPF_Participante) references Participante(CPF_Participante),
	foreign key(CNPJ_Escola) references Escola(CNPJ),
	primary key(CPF_Participante)
) default charset = utf8;

# 13)Integrante( {CNPJ, estado_campeonato, ano_campeonato, data_desfile}, grupo, colocação, enredo, , hora_inicio, hora_fim)
create table if not exists Integrante(

	CNPJ int unsigned,	
	ano year,	
	estado enum('RJ','SP'),
	data_desfile date not null,
	grupo varchar(15) not null,
	colocação int unsigned not null,
	enredo varchar(80), 
	hora_inicio time,
	hora_fim time,
	
	foreign key(CNPJ) references Escola(CNPJ),
	foreign key(ano,estado) references Campeonato(ano,estado),
	primary key(CNPJ, ano, estado, data_desfile)
) default charset = utf8;

# 14)Julgar( {CNPJ, estado_integrante, ano_integrante, data_integrante, CPF_Jurado}, nota, quesito)
create table if not exists Julgar(
	
	CNPJ int unsigned,
	ano year,	
	estado enum('RJ','SP'),
	data date,
	CPF_Jurado int unsigned,
	nota int unsigned not null,
	quesito varchar(20) not null,
	
	foreign key(CNPJ, ano, estado, data) references Integrante(CNPJ, ano, estado, data_desfile),
	foreign key(CPF_Jurado) references Jurado(CPF_Jurado),
	primary key(CNPJ, ano, estado, data, CPF_Jurado)
) default charset = utf8;

# 15)SEI( {CPF_Espectador, CNPJ, estado_integrante, ano_integrante, data}, id_sambódromo, código_setores)
create table if not exists SEI(

	CPF_Espectador int unsigned,
	CNPJ int unsigned,
	ano year,	
	estado enum('RJ','SP'),
	data date,	
	id_sambodromo int unsigned not null,
	numero_setores int unsigned not null,

	foreign key(CPF_Espectador) references Espectador(CPF_Espectador),
	foreign key(CNPJ, ano, estado, data) references Integrante(CNPJ, ano, estado, data_desfile),
	foreign key(numero_setores, id_setores) references Setores(numero, id_sambodromo),
	primary key(CPF_Espectador,CNPJ,ano, estado, data)
) default charset = utf8;
