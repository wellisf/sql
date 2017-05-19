--item 2 A
delete from Trabalha_em where cpfempregado = 999887777 and nrprojeto = 10;

-- item 2 B ERRO
delete from Empregado where CPF = 999887777 cascade;

-- item 3 B ERRO
delete from Empregado where CPF = 333445555 ;

-- 3 A
update Empregado set salario = 28000 where CPF = 999887777;

-- 3 B 
update Empregado set cddepartamento = 1 where CPF = 999887777;

-- 3 C
update Empregado set cddepartamento = 7 where CPF = 999887777;

-- 3 D ERRO
update Empregado set cpf = 987654321 where CPF = 999887777;

-----------------  4 ------------------------------------------

-- 4 A Listar o maior salário da empresa.
SELECT  max(salario) from Empregado ;

--b) Listar a soma dos salários de todos os empregados de departamento ‘Pesquisa’, assim
--como o salário máximo, salário mínimo, e o salário médio no departamento.
SELECT  sum(salario), max(salario), min(salario), avg(salario) from Empregado where cddepartamento = 5;

SELECT  sum(salario), max(salario), min(salario), avg(salario) from Departamento, Empregado 
where Departamento.cddepartamento = Empregado.cddepartamento and upper(dsddepartamento) = upper('pesquisa');

--c) Listar o número de empregados da empresa.
select count(*) as Número_de_empregados from Empregado;

--d) Listar o número de empregados do departamento de Pesquisa.
select count(*) as Número_de_empregados from Empregado where cddepartamento = 5;

select count(*) as Número_de_empregados from Departamento, Empregado 
where Departamento.cddepartamento = Empregado.cddepartamento and upper(dsddepartamento) = upper('pesquisa');

select count(*) as Número_de_empregados from Departamento, Empregado 
where Departamento.cddepartamento = Empregado.cddepartamento and upper(dsddepartamento) = upper('pesquisa');

--e) Listar o número do departamento e para cada departamento o número de empregados da empresa.
SELECT  Departamento.cddepartamento, count(*) from Departamento, Empregado 
where Departamento.cddepartamento = Empregado.cddepartamento group by Departamento.cddepartamento;

SELECT  dsddepartamento, count(*) from Departamento, Empregado 
where Departamento.cddepartamento = Empregado.cddepartamento group by dsddepartamento;

--f) Listar o número do departamento e a média salarial de cada departamento.
SELECT  Departamento.cddepartamento, avg(empregado.salario) from Departamento, Empregado 
where Departamento.cddepartamento = Empregado.cddepartamento group by Departamento.cddepartamento;

SELECT  dsddepartamento, avg(empregado.salario) from Departamento, Empregado 
where Departamento.cddepartamento = Empregado.cddepartamento group by dsddepartamento;

--g) Listar o número do departamento e o total que cada departamento gasta com salários
SELECT  Departamento.cddepartamento, sum(empregado.salario) from Departamento, Empregado 
where Departamento.cddepartamento = Empregado.cddepartamento group by Departamento.cddepartamento;

SELECT  dsddepartamento, sum(empregado.salario) from Departamento, Empregado 
where Departamento.cddepartamento = Empregado.cddepartamento group by dsddepartamento;

--h) Para cada projeto, liste o número do projeto, nome do projeto e 
--o número de empregados que trabalham naquele projeto.
SELECT Projeto.nrprojeto, nmprojeto, count(*) from Projeto, trabalha_em 
where Projeto.nrprojeto = Trabalha_em.nrprojeto group by Projeto.nrprojeto order by Projeto.nrprojeto;

--i) Para cada projeto no qual trabalhem mais do que dois empregados, listar o número do
--projeto, o nome do projeto e o número de empregados que trabalham no projeto.
SELECT Projeto.nrprojeto, nmprojeto, COUNT(*) FROM Projeto, Trabalha_em
WHERE Projeto.nrprojeto = Trabalha_em.nrprojeto GROUP BY Projeto.nrprojeto HAVING COUNT(*) > 2;

--j) Listar o número do departamento que gasta mais de R$70 000,00 com empregados 
--cujo o salário é maior que R$ 25 000,00.
SELECT cddepartamento FROM Empregado WHERE salario > '25000' 
GROUP BY cddepartamento HAVING SUM(salario) > '75000';

--k) Recuperar o nome e o endereço de todos os empregados que trabalham para o departamento de ‘Pesquisa’;
SELECT nome, endereco FROM Empregado, Departamento
WHERE Empregado.cddepartamento = Departamento.cddepartamento AND upper(dsddepartamento) = upper('Pesquisa');

--l) Para cada projeto localizado na ‘Gavea’, liste o número do projeto, 
--o departamento controlador, o endereço e a data de nascimento do gerente do departamento;
SELECT nrprojeto, dsddepartamento AS depto_dontrolador, Empregado.endereco, nascimento
FROM Projeto, Departamento, Empregado
WHERE Projeto.nrdepartamento = Departamento.cddepartamento AND 
      Departamento.cpfgerente = Empregado.cpf AND
      localizacaoprojeto = 'Gavea';

--m) Liste todos os empregados com dois ou mais dependentes;
SELECT nome FROM Empregado, Dependente WHERE Empregado.cpf = Dependente.cpfempregado 
GROUP BY nome HAVING COUNT(*) > 2;

--n) Recupere os nomes dos empregados que não tenham dependentes;
SELECT nome FROM Empregado
WHERE NOT EXISTS ( 
	SELECT * FROM Dependente WHERE Dependente.cpfempregado = Empregado.cpf
);