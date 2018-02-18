#################################################
################## INSERT INTO ##################
#################################################

# 1)Escola( {CNPJ}, nome, nome_fantasia, cor1, cor2, cor3 endereço)
insert into Escola() values 
	('0', 'BEIJA-FLOR', 'Beija-Flor de Nilópolis ', 'Azul', 'Branco',null, 'Pracinha Wallace Paes Leme 1025 - Nilópolis','1948'), 
	('1', 'GRANDE RIO', 'Grande Rio de Duque de Caxias ', 'Vermelho', 'Verde', 'Branco', 'Rua Wallace Soares 5 - Duque de Caxias','1988'),
	('2', 'IMPERATRIZ LEOPOLDINENSE','Leopoldinense de Ramos', 'Verde', 'Branco','Dourado', 'Rua Professor Lacê 235 – Ramos','1959'),
	('3','MANGUEIRA','Mangueira', 'Verde', 'Rosa',null,'Rua Visconde de Niterói 1072 - Mangueira','1928'),
	('4','MOCIDADE','Mocidade de Pedro Miguel', 'Verde','Branco',null,'Rua Coronel Tamarindo 38 - Padre Miguel','1955'),
	('5','PORTELA','Portela de Madureira','Azul', 'Branco',null,'Rua Clara Nunes 81 - Madureira','1926'),
	('6','SALGUEIRO','Salgueiro da Tijuca','Vermelho', 'Branco',null,'Rua Silva Teles 104 - Tijuca','1953'),
	('7','SÃO CLEMENTE','São Clemente','Amarelo','Preto',null,'Av. Presidente Vargas 3102 - Centro','1961'),
	('8','UNIÃO DA ILHA','Ilha do Governador','Azul', 'Vermelho', 'Branco',' Estrada do Galeão 322 - Ilha do Governador','1953'),
	('9','VILA ISABEL','Vila Isabel','Azul', 'Branco',null,'Av. 28 de Setembro 382 - Vila Isabel','1946'),
	('10','UNIDOS DA TIJUCA','São Cristóvão','Amarelo', 'Azul', null,'Av. Francisco Bicalho 47 - São Cristóvão','1931');

#CAMPEONATO
insert into Campeonato() values
	('2012','RJ','2012/02/05','2012/02/10','Ao assinarem a ficha de inscrição, as Escolas de Samba e os seus respectivos integrantes, assumem o'),

	('2013','RJ','2013/02/12','2013/02/17','Ao assinarem a ficha de inscrição, as Escolas de Samba e os seus respectivos integrantes, assumem o
	compromisso de respeitar incondicionalmente todas as regras estabelecidas neste Regulamento'),

	('2014','RJ','2014/02/22','2014/02/27','Ao assinarem a ficha de inscrição, as Escolas de Samba e os seus respectivos integrantes, assumem o
	compromisso de respeitar incondicionalmente todas as regras estabelecidas neste Regulamento'),

	('2015','RJ','2015/02/19','2015/02/24','Ao assinarem a ficha de inscrição, as Escolas de Samba e os seus respectivos integrantes, assumem o
	compromisso de respeitar incondicionalmente todas as regras estabelecidas neste Regulamento'),

	('2016','RJ','2016/03/01','2016/03/06','Ao assinarem a ficha de inscrição, as Escolas de Samba e os seus respectivos integrantes, assumem o
	compromisso de respeitar incondicionalmente todas as regras estabelecidas neste Regulamento'),

	('2017','RJ','2016/02/03','2016/02/08','Ao assinarem a ficha de inscrição, as Escolas de Samba e os seus respectivos integrantes, assumem o
	compromisso de respeitar incondicionalmente todas as regras estabelecidas neste Regulamento'),

	('2012','SP','2012/02/05','2012/02/10','compromisso de respeitar incondicionalmente todas as regras estabelecidas neste Regulamento'),

	('2013','SP','2013/02/12','2013/02/17','Ao assinarem a ficha de inscrição, as Escolas de Samba e os seus respectivos integrantes, assumem o
	compromisso de respeitar incondicionalmente todas as regras estabelecidas neste Regulamento'),

	('2014','SP','2014/02/22','2014/02/27','Ao assinarem a ficha de inscrição, as Escolas de Samba e os seus respectivos integrantes, assumem o
	compromisso de respeitar incondicionalmente todas as regras estabelecidas neste Regulamento'),

	('2015','SP','2015/02/19','2015/02/24','Ao assinarem a ficha de inscrição, as Escolas de Samba e os seus respectivos integrantes, assumem o
	compromisso de respeitar incondicionalmente todas as regras estabelecidas neste Regulamento'),

	('2016','SP','2016/03/01','2016/03/06','Ao assinarem a ficha de inscrição, as Escolas de Samba e os seus respectivos integrantes, assumem o
	compromisso de respeitar incondicionalmente todas as regras estabelecidas neste Regulamento'),

	('2017','SP','2016/02/03','2016/02/08','Ao assinarem a ficha de inscrição, as Escolas de Samba e os seus respectivos integrantes, assumem o
	compromisso de respeitar incondicionalmente todas as regras estabelecidas neste Regulamento');

#Sambódromo
insert into Sambodromo() values
	(default,'Anhembi',	'Av. Olavo Fontoura, 1209 - Santana','1991/01/01','São Paulo'),
	(default,'Marquês de Sapucaí', 'R. Marquês de Sapucaí - Santo Cristo','1984/01/01','Rio de Janeiro'),
	(default,'Centro de Convenções de Manaus','Avenida Pedro Teixeira, 2565 - Flores','1994/01/01','Manaus'),
	(default,'Sambão do Povo','R. Dário de Lourenço Souza','1987/01/01','Vitória'),
	(default,'Passarela Nego Quirido','Av Governador Gustavo Richard, 5000 - Centro','1989/01/01','Santa Catarina'),
	(default,'Artes Populares','Rodovia JK KM 2','2013/08/01','Macapá'),
	(default,'Complexo Cultural do Porto Seco','R. Hermes de Souza, s/n - Rubem Berta','2004/01/01','Porto Alegre'),
	(default,'Davi Miguel','Av Pedro Miranda - Pedreira','2000/01/01','Belém');
	

#Setores
insert into Setores() values
	(default, 'A', '70','26000','1'),
	(default, 'J', '50','49081','1'),
	(default, 'Arquibancadas', '100','21084','1'),
	(default, 'Pista', '120','208015','1'),
	(default, 'Espaço Anhembi','500','11755','1'),
	(default,'Arena Anhembi', '250','49936','1' ),
	(default, 'Nova Arena', '350', '38095','1'),

	(default, 'A', '50', '5000', '2'),
	(default, 'B', '70', '15000', '2'),
	(default, 'C', '80', '3000', '2'),
	(default, 'D', '100', '20000', '2'),
	(default, 'E', '120', '17000', '2'),
	(default, 'F', '150', '10000', '2'),
	(default, 'Arquibancadas', '200','1000','2'),
	(default, 'camarote', '350','200','2'),
	(default, 'Pista', '75','800','2'),

	(default, 'A', '20', '5000','3'),
	(default, 'B', '50', '15000','3'),
	(default, 'C', '70', '13000','3'),
	(default, 'D', '90', '20000','3'),
	(default, 'E', '100', '17000','3'),
	(default, 'F', '120', '10000','3'),
	(default, 'Arquibancadas', '180','15000','3'),
	(default, 'Pista', '75','3000','3'),
	(default, 'Camarote', '250','2000','3'),

	(default, 'A', '50', '1500','4'),
	(default, 'B', '80', '1000','4'),
	(default, 'C', '150', '1200','4'),
	(default, 'Arquibancadas', '100','500','4'),
	(default, 'Camarote', '200','800','4'),

	(default, 'A', '50', '1700','5'),
	(default, 'B', '80', '1000','5'),
	(default, 'C', '150', '1000','5'),
	(default, 'Arquibancadas', '100','500','5'),
	(default, 'Camarote', '200','800','5'),

	(default, 'A', '50', '7700','6'),
	(default, 'B', '80', '2000','6'),
	(default, 'C', '180', '3500','6'),
	(default, 'D', '150', '2500','6'),
	(default, 'Arquibancadas', '200','2000','6'),
	(default, 'Camarote', '300','300','6'),

	(default, 'A', '50', '5200','7'),
	(default, 'B', '80', '2000','7'),
	(default, 'C', '180', '3500','7'),
	(default, 'D', '150', '2500','7'),
	(default, 'E', '110', '4000','7'),
	(default, 'Arquibancadas', '200','2000','7'),
	(default, 'Camarote', '300','800','7'),

	(default, 'A', '50', '5400','8'),
	(default, 'B', '80', '2000','8'),
	(default, 'C', '180', '3500','8'),
	(default, 'D', '150', '2500','8'),
	(default, 'E', '110', '3800','8'),
	(default, 'Arquibancadas', '200','2000','8'),
	(default, 'Camarote', '300','800','8');

#Não há certeza que está certo

#Pessoa - ({CPF}, nome, endereço, nascimento, sexo)
insert into Pessoa(CPF,nome,endereço,nascimento,nacionalidade,sexo) values
	('1','João','Av Bom Horizonte','1972/10/14',default,'M'),
	('2','Maria','Av Bom Horizonte','1977/12/27',default,'F'),
	('3','Pedro','Rua Nova Esperença','1976/01/12',default,'M'),
	('4','Gustavo','Rua da Igualdade','1986/11/16','Portugues','M'),
	('5','Ana','Av Duque de Caxias','1991/04/05','Japonesa','F'),
	('6','Oscar','Av. Olavo Fontoura','1995/01/07','Alemão','M'),
	('7','Olavo','Rua das Rosas','1970/02/28',default,'M'),
	('8','Laura','Rua das Pedras','1992/06/08','Mexicano','F'),
	('9','Maicon','Av 28 de Março','1987/08/07','Argentino','M'),
	('10','Rafaela','Rua Professor Joaquim','1957/01/15',default,'F'),
	('11','Adriano','Rua Professor Joaquim','1975/05/06',default,'M'),
	('12','Joaquim','Av 7 de Setembro', '1994/02/07',default,'M'),
	('13','Salvador','Av São João','1972/08/30',default,'M'),
	('14','Marta','Av Duque de Caxias','1985/07/06',default,'F'),
	('15','Tamires','Rua São José','1991/01/31',default,'F'),
	('16','Gabriela','Rua Boa Esperença','1989/06/25',default,'F'),
	('17','Iara','Av 7 de Setembro','1959/07/21',default,'F'),
	('18','Juliana', 'Av Olavo Fontoura','1987/06/23',default,'F'),
	('19','Aline','Rua das Rosas','1992/03/22','Japonesa','F'),
	('20','Douglas', 'Av 28 de Março','1976/04/26','Alemão','M'),
	('21','Lucas', 'Rua Silva Xavier', '1987/02/17','Alemão','M'),
	('22','Ronaldo', 'Rua Tiro de Guerra','1968/09/27',default, 'M'),
	('23','Beatriz', 'Rua Tiro de Guerra','1979/03/24',default, 'F'),
	('24','Tainara','Rua São José','1991/01/31',default,'F'),
	('25','Flavia', 'Av Olavo Fontoura','1977/04/13',default,'F');

#Jurado - ({CPF}, atividade)
insert into Jurado() values
	('1','Cantor'),
	('2','Baterista'),
	('3','Compositor'),
	('4','Maestro'),
	('5','Maestro'),
	('6','Estilista'),
	('7','Estilista'),
	('8','Estilista');

#Participante - ({CPF}, cargo, filiação)
insert into Participante() values
	('9','Lixeiro','2015/05/01'),
	('10','Delegado','2014/07/03'),
	('11','Coveiro','2011/04/27'),
	('12','Motorista','2016/02/14'),
	('13','Professor','2013/07/05'),
	('14','Médico','2014/06/28'),
	('15','Vendedor','2015/07/25');

#Espectador - ({CPF}, email, ingresso, telefone)
insert into Espectador() values
	('16','gabi@email.com','16111','997312489'),
	('17','iara@email.com','17211','981349569'),
	('18',null,'18001','992226879'),
	('19','aline@email.com','19211','997226754'),
	('20',null,'20200',null);

#Fundador - ({CPF}, data_óbito) 
insert into Fundador() values
	('21','2016/05/14'),
	('22','2015/04/03'),
	('23',null),
	('24',null),
	('25','2016/08/07');

#Sediar - ({id_Sambodromo} , id_Campeonato)
insert into Sediar() values
	('1','2015','SP'),
	('2','2016','RJ'),
	('3','2014','SP'),
	('4','2014','RJ'),
	('5','2015','RJ'),
	('5','2013','SP');

#Fundar - ({CPF_Fundador, id_sambódromo})
insert into Fundar() values
	('21','1'),
	('22','2'),
	('23','3'),
	('24','4'),
	('25','4'),
	('25','5');

#Filiar - ( {CPF_Participante}, CNPJ_Escola)
insert into Filiar() values
	('10','1','2016', null),
	('11','2','2010','2015'),
	('12','1','2011','2016'),
	('13','1','2009','2014'),
	('14','1','2014',null),
	('15','1','2015',null);

# 13)Integrante( CNPJ, ano_campeonato, estado_campeonato, data_desfile, grupo, colocação, enredo, hora_inicio, hora_fim)
insert into Integrante values	('6','2015','RJ','2015/02/05','A','1','Explode Coração','220000','230000');
insert into Integrante values	('8','2015','RJ','2015/02/05','A','2','É hoje O Dia','10000','20000');
insert into Integrante values	('4','2015','RJ','2015/02/06','A','3','Sonhar não custa nada! Ou quase nada','10000','20000');
insert into Integrante values	('3','2015','RJ','2015/02/06','A','4','Atrás da Verde e Rosa só não vai quem já morreu','220000','230000');
insert into Integrante values	('1','2015','SP','2015/02/12','Acesso','2','Coisa Boa é Pra Sempre','220000','230000');
insert into Integrante values	('5','2015','SP','2015/02/12','Acesso','1','A Rainha, à noite tudo transforma','10000','20000');
insert into Integrante values	('7','2015','SP','2015/02/13','A','2','Aquarela Brasileira','10000','20000');
insert into Integrante values	('2','2015','SP','2015/02/13','A','1','Liberdade, liberdade, abre as asas sobre nós','10000','20000');

# Julgar( {CNPJ, estado_campeonato, ano_campeonato,data, CPF_Jurado}, nota, quesito)
insert into Julgar() values
	('6','2015','RJ','2015/02/05','1','70','Harmonia'),
	('8','2015','RJ','2015/02/05','1','87','Bateria'),
	('4','2015','RJ','2015/02/06','1','99','Percussão'),
	('3','2015','RJ','2015/02/06','1','92','Enredo'),
	('1','2015','SP','2015/02/12','2','85','Evolução'),
	('5','2015','SP','2015/02/12','8','84','Comissão de Frente'),
	('7','2015','SP','2015/02/13','8','81','Fantasias'),
	('2','2015','SP','2015/02/13','2','90','Mestre Sala');

# SEI( {CPF_Espectador, CNPJ, ano, estado, data}, id_sambódromo, código_setores)
insert into SEI() values
	('16','6','2015','RJ','2015/02/05','1','1'),
	('17','6','2015','RJ','2015/02/05','1','2'),
	('18','1','2015','SP','2015/02/12','2','8'),
	('19','7','2015','SP','2015/02/13','3','18'),
	('20','2','2015','SP','2015/02/13','3','20');


