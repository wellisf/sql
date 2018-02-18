#################################################
################## INSERT INTO ##################
#################################################

#ESCOLA
insert into Escola(CNPJ, nome, nome_fantasia, cores_representativas, endereço, fundação) values 
	('0', 'BEIJA-FLOR', 'Beija-Flor de Nilópolis ', 'Azul e Branco', 'Pracinha Wallace Paes Leme 1025 - Nilópolis','1948'), 
	('1', 'GRANDE RIO', 'Grande Rio de Duque de Caxias ', 'Vermelho, Verde e Branco', 'Rua Wallace Soares 5 - Duque de Caxias','1988'),
	('2', 'IMPERATRIZ LEOPOLDINENSE','Leopoldinense de Ramos', 'Verde, Branco e Dourado', 'Rua Professor Lacê 235 – Ramos','1959'),
	('3','MANGUEIRA','Mangueira', 'Verde e Rosa','Rua Visconde de Niterói 1072 - Mangueira','1928'),
	('4','MOCIDADE','Mocidade de Pedro Miguel', 'Verde e Branco','Rua Coronel Tamarindo 38 - Padre Miguel','1955'),
	('5','PORTELA','Portela de Madureira','Azul e Branco','Rua Clara Nunes 81 - Madureira','1926'),
	('6','SALGUEIRO','Salgueiro da Tijuca','Vermelho e Branco','Rua Silva Teles 104 - Tijuca','1953'),
	('7','SÃO CLEMENTE','São Clemente','Amarelo e Preto','Av. Presidente Vargas 3102 - Centro','1961'),
	('8','UNIÃO DA ILHA','Ilha do Governador','Azul, Vermelho e Branco',' Estrada do Galeão 322 - Ilha do Governador','1953'),
	('9','VILA ISABEL','Vila Isabel','Azul e Branco','Av. 28 de Setembro 382 - Vila Isabel','1946'),
	('10','UNIDOS DA TIJUCA','São Cristóvão','Amarelo e Azul','Av. Francisco Bicalho 47 - São Cristóvão','1931');

#CAMPEONATO
insert into Campeonato() values
	(default,'2012','RJ','2012/02/05','2012/02/10','Ao assinarem a ficha de inscrição, as Escolas de Samba e os seus respectivos integrantes, assumem o'),

	(default,'2013','RJ','2013/02/12','2013/02/17','Ao assinarem a ficha de inscrição, as Escolas de Samba e os seus respectivos integrantes, assumem o
	compromisso de respeitar incondicionalmente todas as regras estabelecidas neste Regulamento'),

	(default,'2014','RJ','2014/02/22','2014/02/27','Ao assinarem a ficha de inscrição, as Escolas de Samba e os seus respectivos integrantes, assumem o
	compromisso de respeitar incondicionalmente todas as regras estabelecidas neste Regulamento'),

	(default,'2015','RJ','2015/02/19','2015/02/24','Ao assinarem a ficha de inscrição, as Escolas de Samba e os seus respectivos integrantes, assumem o
	compromisso de respeitar incondicionalmente todas as regras estabelecidas neste Regulamento'),

	(default,'2016','RJ','2016/03/01','2016/03/06','Ao assinarem a ficha de inscrição, as Escolas de Samba e os seus respectivos integrantes, assumem o
	compromisso de respeitar incondicionalmente todas as regras estabelecidas neste Regulamento'),

	(default,'2017','RJ','2016/02/03','2016/02/08','Ao assinarem a ficha de inscrição, as Escolas de Samba e os seus respectivos integrantes, assumem o
	compromisso de respeitar incondicionalmente todas as regras estabelecidas neste Regulamento'),

	(default,'2012','SP','2012/02/05','2012/02/10','compromisso de respeitar incondicionalmente todas as regras estabelecidas neste Regulamento'),

	(default,'2013','SP','2013/02/12','2013/02/17','Ao assinarem a ficha de inscrição, as Escolas de Samba e os seus respectivos integrantes, assumem o
	compromisso de respeitar incondicionalmente todas as regras estabelecidas neste Regulamento'),

	(default,'2014','SP','2014/02/22','2014/02/27','Ao assinarem a ficha de inscrição, as Escolas de Samba e os seus respectivos integrantes, assumem o
	compromisso de respeitar incondicionalmente todas as regras estabelecidas neste Regulamento'),

	(default,'2015','SP','2015/02/19','2015/02/24','Ao assinarem a ficha de inscrição, as Escolas de Samba e os seus respectivos integrantes, assumem o
	compromisso de respeitar incondicionalmente todas as regras estabelecidas neste Regulamento'),

	(default,'2016','SP','2016/03/01','2016/03/06','Ao assinarem a ficha de inscrição, as Escolas de Samba e os seus respectivos integrantes, assumem o
	compromisso de respeitar incondicionalmente todas as regras estabelecidas neste Regulamento'),

	(default,'2017','SP','2016/02/03','2016/02/08','Ao assinarem a ficha de inscrição, as Escolas de Samba e os seus respectivos integrantes, assumem o
	compromisso de respeitar incondicionalmente todas as regras estabelecidas neste Regulamento');

#Sambódromo
insert into Sambodromo() values
	(default, 'Marquês de Sapucaí', 'Rua Marquês de Sapucaí - Santo Cristo','72000','1984/01/01','Rio de Janeiro'),
	(default, 'Anhembi','Avenida Olavo Fontoura, 1209 - Santana','103200','1991/01/01','São Paulo');

#Setores
insert into Setores() values
	(default, 'A', '70','26000','2'),
	(default, 'J', '50','49081','2'),
	(default, 'Arquibancadas', '100','21084','2'),
	(default, 'Pista', '120','208015','2'),
	(default, 'Espaço Anhembi','500','11755','2'),
	(default,'Arena Anhembi', '250','49936','2' ),
	(default, 'Nova Arena', '350', '38095','2');


############################### Começar a mexer a partir daqui.
# não permite uma escola, participa mais de um ano

#Sediar - ({id_Sambodromo} , id_Campeonato)
insert into Sediar() values

#Pessoa - ({CPF}, nome, endereço, nascimento, sexo)
insert into Pessoa() values

#Jurado - ({CPF}, atividade)
insert into Jurado() values

#Participante - ({CPF}, cargo, filiação)
insert into Participante() values

#Espectador - ({CPF}, email, ingresso, telefone)
insert into Espectador() values

#Fundador - ({CPF}, data_óbito) 
insert into Fundador() values

#Fundar - ({CPF_Fundador, id_sambódromo})
insert into Fundar() values

#Filiar - ( {CPF_Participante}, CNPJ_Escola)
insert into Filiar() values

#Integrante - ( {id_Integrante}, CNPJ, id_campeonato, grupo, colocação, enredo, data_desfile, hora_inicio, hora_fim, tempo_desfile)
insert into Integrante() values

#Julgar - ({id_Integrante}, CPF_Jurado, dia, nota, quesito)
insert into Julgar() values

#SEI - ( {CPF_Espectador, id_integrante}, id_sambódromo, código_setores) 
insert into SEI() values
