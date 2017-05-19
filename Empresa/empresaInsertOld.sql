insert into Empregado(nome, sobrenome, cpf, nascimento, endereco, sexo, salario) values 
('João','Smith', 123456789,'09/01/1965','R.Casimiro de Abreu,30,RJ','M',30000),
('Francisco','Gomes', 333445555,'08/12/1955','R.Buarque,430,RJ','M',40000),
('Alicia','Foly', 999887777,'19/07/1968','R.Matriz,250,RJ','F',25000),
('Jennifer','Cardoso', 987654321,'20/06/1941','R.Niterói,67,RJ','F',43000),
('Adriano','Matias',666884444,'15/09/1962','R. Duque Estrada, 23, RJ','M',38000),
('Joyce','Vianna',453453453,'31/07/1972','R. General Osório, 45, RJ','F',25000),
('Leonardo','Rangel',987987987,'29/03/1969','R. Osvaldo Cruz, 81, RJ','M',25000),
('Diogo','Poly',888665555,'10/11/1937','R. Maria Guimarães, 65, RJ','M',55000);

insert into Departamento(dsddepartamento, cddepartamento,cpfgerente,data_inicio_gerente) values
('Pesquisa',5,333445555,'22/05/1988'),
('Administração',4,987654321,'01/01/1995'),
('Coordenação',1,888665555,'19/06/1981');

insert into Localizacao_departamento values 
(1,'Aeroporto'),
(4,'Gavea'),
(5,'Ipanema'),
(5,'Centro'),
(5,'Tijuca');

insert into Projeto(nmprojeto, nrprojeto, localizacaoprojeto, nrdepartamento) values 
('Projeto X',1,'Ipanema',5),
('ProjetoY',2,'Centro',5),
('Projeto Z',3,'Aeroporto',5),
('Informatização',10,'Gavea',4),
('Reorganização',20,'Aeroporto',1),
('NovosBenefícios',30,'Gavea',4);

insert into Trabalha_em values 
(123456789,1, 32.5),
(123456789,2,7.5),
(666884444,3,40),
(453453453,1,20.0),
(453453453,2,20.0),
(333445555,2,10.0),
(333445555,3,10.0),
(333445555,10,10.0),
(333445555,20,10.0),
(999887777,30,30.0),
(999887777,10,10.0),
(987987987,10,35.0),
(987987987,30,5.0),
(987654321,30,20.0),
(987654321,20,15.0),
(888665555,20,null);

insert into Dependente values
('333445555',1,'Alice','F','05/04/1986','Filha'),
('333445555',2,'Thiago','M','25/10/1983','Filho'),
('333445555',3,'Carolina','F','03/05/1958','Esposa'),
('987654321',1,'Abner','M','28/02/1942','Esposa'),
('123456789',1,'Mauricio','M','04/01/1988','Filho'),
('123456789',2,'Alice','F','30/12/1988','Filha'),
('123456789',3,'Elizabeth','F','05/05/1967','Esposa');


				