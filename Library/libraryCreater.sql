create table autor
(
	id_autor int primary key,
	nm_autor varchar(40),
	email_autor varchar(50)
);


create table assunto
(
	id_assunto int primary key,
	desc_assunto varchar(40)
);


create table livro
(
	id_livro int primary key,
	titulo varchar(50),
	preço decimal(4,2),
	estoque int,
	id_assunto int,
	constraint fk_livro_assunto foreign key (id_assunto) references assunto(id_assunto)
	
);

create table autor_livro
(
	id_livro int,
	id_autor int,
	constraint pk_autor_livro primary key (id_autor, id_livro),
	constraint fk_autor_livro_autor foreign key (id_autor) references autor(id_autor),
	constraint fk_autor_livro_livro foreign key (id_livro) references livro(id_livro)

);

create table cliente
(
	id_cliente int primary key,
	nome varchar(40),
	telefone int

);

create table venda
(
	id_venda int primary key,
	total int,
	dtvenda date,
	id_cliente int,
	constraint fk_venda_cliente foreign key (id_cliente) references cliente(id_cliente)
	
);

create table item_venda
(
	id_venda int,
	id_livro int,
	qnt_venda int,
	subtotal_venda int,
	constraint pk_venda_livro primary key (id_venda, id_livro),
	constraint fk_item_venda_venda foreign key (id_venda) references venda(id_venda),
	constraint fk_item_venda_livro foreign key (id_livro) references livro(id_livro)
	
);



Insert into autor values(01,'Paulo','paulinho_coelho@gmail.com');
Insert into autor values(02,'Machado','machadoassis@gmail.com');
Insert into autor values(03,'Adryanne','adryanneoliveira@gmail.com');
Insert into autor values(04,'Matheus','matheusnacif@gmail.com');
Insert into autor values(05,'Rafaela','rafaelamarchito@hotmail.com');
Insert into autor values(06,'Flavia','flaviaviana@hotmail.com');
Insert into autor values(07,'Alcilane','alcilaneborges@hotmail.com');
Insert into autor values(08,'Priscila','priscilarodrigues@hotmail.com');


Insert into assunto values(01, 'Drama');
Insert into assunto values(02, 'Açao');
Insert into assunto values(03, 'Comedia');
Insert into assunto values(04, 'romance');
Insert into assunto values(05, 'Terror');
Insert into assunto values(06, 'auto ajuda');
Insert into assunto values(07, 'Ficçao');
Insert into assunto values(08, 'infantil');
Insert into assunto values(09, 'religioso');
Insert into assunto values(10, 'aventura');
insert into assunto values(11, 'erotico');

Insert into livro values(20,'A culpa e das estrelas',10.00,10,01);
Insert into livro values(19,'A cabana',10.00,5,01);
Insert into livro values(18,'As Cronicas de narnia',10.00,20,07);
Insert into livro values(17,'Harry Potter',10.00,15,07);
Insert into livro values(16,'O Pequeno Principe',10.00,00,01);
Insert into livro values(15,'Jogos Vorazes',10.00,25,02);
Insert into livro values(14,'Fala serio mae',10.00,5,03);
Insert into livro values(13,'O circulo secreto',10.00,15,07);
Insert into livro values(12,'A Pequena Sereia',10.00,5,08);
Insert into livro values(11,'O Rei Leao',10.00,10,08);
Insert into livro values(10,'Kairos',10.00,10,09);
Insert into livro values(09,'Divergente',10.00,10,10);
Insert into livro values(08,'O caçador de pipas',10.00,00,01);
Insert into livro values(07,'Gossip girls',10.00,10,04);
Insert into livro values(06,'Chico Xavier',10.00,10,06);
Insert into livro values(05,'Anjos e demônios',10.00,15,07);
Insert into livro values(04,'De volta a cabana',10.00,10,01);
Insert into livro values(03,'Eu me chamo Antônio',10.00,20,06);
Insert into livro values(02,'A menina que roubava livros',10.00,10,01);
Insert into livro values(01,'Crime perfeito',10.00,10,03);

Insert into autor_livro values(20, 01);
Insert into autor_livro values(19, 05);
Insert into autor_livro values(18, 02);
Insert into autor_livro values(17, 03);
Insert into autor_livro values(16, 04);
Insert into autor_livro values(15, 07);
Insert into autor_livro values(14, 08);
Insert into autor_livro values(13, 06);
Insert into autor_livro values(12, 03);
Insert into autor_livro values(11, 08);
Insert into autor_livro values(10, 01);
Insert into autor_livro values(09, 04);
Insert into autor_livro values(08, 02);
Insert into autor_livro values(07, 08);
Insert into autor_livro values(06, 02);
Insert into autor_livro values(05, 03);
Insert into autor_livro values(04, 07);
Insert into autor_livro values(03, 04);
Insert into autor_livro values(02, 02);
Insert into autor_livro values(01, 05);


Insert into cliente values(001, 'Maria Cruz', 123654789);
Insert into cliente values(002, 'Osvaldo Pereira', 153654789);
Insert into cliente values(003, 'Arlindo Neves', 123664789);
Insert into cliente values(004, 'Carlos Jesus', 123659589);
Insert into cliente values(005, 'Augustos Liz', 123654129);
Insert into cliente values(006, 'Ramon Ramos', 121254789);
Insert into cliente values(007, 'Rafaela Marchito', 123635289);
Insert into cliente values(008, 'Aurora Carneiro', 123154789);
Insert into cliente values(009, 'Miley Cyrus', 121684789);
Insert into cliente values(010, 'Demi Lovato', 123651549);
Insert into cliente values(011, 'Lady Gaga', 1236598759);
Insert into cliente values(012, 'Madonna Silva', 123654642);
Insert into cliente values(013, 'Rihanna Souza', 175354789);
Insert into cliente values(014, 'Mc Ludimilla', 1236145889);
Insert into cliente values(015, 'Maikon Tayson', 1232304789);
Insert into cliente values(016, 'Michael Jackson', 123458789);
Insert into cliente values(017, 'Jesse J', 123654654);
Insert into cliente values(018, 'Justin Timberlake', 123625489);
Insert into cliente values(019, 'Selena Gomes', 121264789);
Insert into cliente values(020, 'Justin Bieber', 123655879);

Insert into venda values(00001, 20.00, '18/06/2005', 020);
Insert into venda values(00002, 20.00, '20/07/2005', 001);
Insert into venda values(00003, 20.00, '25/01/2014', 013);
Insert into venda values(00004, 20.00, '28/02/2015', 010);
Insert into venda values(00005, 20.00, '31/05/1997', 006);
Insert into venda values(00006, 20.00, '10/07/1998', 007);
Insert into venda values(00007, 20.00, '12/12/1999', 008);
Insert into venda values(00008, 20.00, '13/11/2000', 019);
Insert into venda values(00009, 20.00, '15/06/2012', 018);
Insert into venda values(00010, 20.00, '14/03/2014', 017);
Insert into venda values(00011, 20.00, '19/02/2010', 015);
Insert into venda values(00012, 20.00, '01/04/2000', 016);
Insert into venda values(00013, 20.00, '05/08/1999', 014);
Insert into venda values(00014, 20.00, '17/09/2004', 015);
Insert into venda values(00015, 20.00, '10/10/2005', 011);
Insert into venda values(00016, 20.00, '15/12/2006', 012);
Insert into venda values(00017, 20.00, '25/11/2007', 014);
Insert into venda values(00018, 20.00, '20/05/2008', 005);
Insert into venda values(00019, 20.00, '10/04/2013', 013);
Insert into venda values(00020, 20.00, '05/03/2007', 009);
Insert into venda values(00021, 20.00, '12/05/2003', 016);
Insert into venda values(00022, 20.00, '25/05/2001', 001);
Insert into venda values(00023, 20.00, '02/02/2003', 002);
Insert into venda values(00024, 20.00, '23/07/2002', 015);
Insert into venda values(00025, 20.00, '01/05/2011', 003);
Insert into venda values(00026, 20.00, '09/01/2010', 011);
Insert into venda values(00027, 20.00, '13/06/2000', 004);
Insert into venda values(00028, 20.00, '20/12/2014', 020);
Insert into venda values(00029, 20.00, '12/07/2010', 012);
Insert into venda values(00030, 20.00, '03/04/2014', 001);

Insert into item_venda values(00030, 01, 2, 20.00);
Insert into item_venda values(00029, 02, 5, 50.00);
Insert into item_venda values(00028, 03, 4, 40.00);
Insert into item_venda values(00027, 04, 3, 30.00);
Insert into item_venda values(00026, 05, 1, 50.00);
Insert into item_venda values(00025, 06, 2, 60.00);
Insert into item_venda values(00024, 07, 5, 70.00);
Insert into item_venda values(00023, 08, 6, 80.00);
Insert into item_venda values(00022, 09, 7, 90.00);
Insert into item_venda values(00021, 10, 5, 100.00);
Insert into item_venda values(00020, 11, 3, 30.00);
Insert into item_venda values(00019, 12, 8, 80.00);
Insert into item_venda values(00018, 13, 6, 60.00);
Insert into item_venda values(00017, 14, 1, 10.00);
Insert into item_venda values(00016, 15, 2, 20.00);
Insert into item_venda values(00015, 16, 2, 20.00);
Insert into item_venda values(00014, 17, 2, 20.00);
Insert into item_venda values(00013, 18, 9, 90.00);
Insert into item_venda values(00012, 19, 8, 80.00);
Insert into item_venda values(00011, 20, 7, 70.00);
Insert into item_venda values(00010, 01, 6, 60.00);
Insert into item_venda values(00009, 02, 5, 50.00);
Insert into item_venda values(00008, 03, 4, 40.00);
Insert into item_venda values(00007, 04, 3, 30.00);
Insert into item_venda values(00006, 05, 1, 10.00);
Insert into item_venda values(00005, 06, 2, 20.00);
Insert into item_venda values(00004, 07, 5, 50.00);
Insert into item_venda values(00003, 08, 6, 60.00);
Insert into item_venda values(00002, 09, 7, 70.00);
Insert into item_venda values(00001, 10, 5, 50.00);
Insert into item_venda values(00001, 11, 7, 70.00);
Insert into item_venda values(00002, 12, 9, 90.00);
Insert into item_venda values(00003, 13, 4, 40.00);
Insert into item_venda values(00004, 14, 6, 60.00);
Insert into item_venda values(00005, 15, 4, 40.00);
Insert into item_venda values(00006, 16, 6, 60.00);
Insert into item_venda values(00007, 17, 1, 10.00);
Insert into item_venda values(00008, 18, 1, 10.00);
Insert into item_venda values(00009, 19, 3, 30.00);
Insert into item_venda values(00010, 20, 1, 10.00);
Insert into item_venda values(00011, 01, 8, 80.00);
Insert into item_venda values(00012, 02, 6, 60.00);
Insert into item_venda values(00013, 03, 4, 40.00);
Insert into item_venda values(00014, 04, 1, 10.00);
Insert into item_venda values(00015, 05, 6, 60.00);
Insert into item_venda values(00016, 06, 5, 50.00);
Insert into item_venda values(00017, 07, 9, 90.00);
Insert into item_venda values(00018, 08, 8, 80.00);
Insert into item_venda values(00019, 09, 6, 60.00);
Insert into item_venda values(00020, 10, 4, 40.00);

update item_venda set qnt_venda= 35 where id_venda=12;
update livro set preço= 90.00 where id_livro=2;
update livro set preço= 50.00 where id_livro=15;
update livro set preço= 8.00 where id_livro=4 or id_livro=10;
update cliente set nome= 'João' where id_cliente=8;
update cliente set nome= 'Joney' where id_cliente=10;
update autor set nm_autor = 'Leonardo Gomes' where id_autor = 3;
