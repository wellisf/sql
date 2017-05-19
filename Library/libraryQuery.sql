--1 Liste o nome do autor que tem livro com estoque zerado.
select autor.nm_autor 
from livro, autor_livro, autor 
where Livro.id_livro = autor_livro.id_livro 
and autor.id_autor = autor_livro.id_autor
and estoque = 0;

--2 Listar todos os livros com seus respectivos títulos, preços e estoque.
select titulo,preço,estoque from livro;

--3 Listar a tabela CLIENTE com todos os atributos.
select * from cliente;

--4 Quais são os clientes (nome) cujos nomes começam com a letra M.
select * from cliente where upper(nome) like upper('M%');

--5 Listar o id da venda, o código do livro, o título do livroe a quantidade dos itens da venda.
select item_venda.id_venda, livro.id_livro, livro.titulo, qnt_venda 
from livro, item_venda where item_venda.id_livro = livro.id_livro;

--6 Listar  id da venda, o código do livro, o título do livro 
--e a quantidade dos itens da venda com a quantidade igual a 35 da tabela item de venda. 
select item_venda.id_venda, livro.id_livro, livro.titulo, qnt_venda 
from livro, item_venda where item_venda.id_livro = livro.id_livro and qnt_venda >= 35;

-- 7 Listar os livros (titulo) que tenham autor que começam com a letra ” L”  e valor unitário maior que R$ 10,00.
select livro.titulo 
from livro, autor_livro, autor 
where Livro.id_livro = autor_livro.id_livro 
and upper(nm_autor) like upper('l%')
and preço > 10 ;

--8) Listar o id e o titulodos livros que tenham o valor unitário na faixa de R$ 20,00 até R$ 100,00, (operador between).
select * from livro where preço between 20 and 100;

--9 Listar os clientes que começam por ‘Jo’.
select * from cliente where upper(nome) like upper('Jo%');

--10 Mostrar em ordem alfabética a lista Autores com seus respectivos e-mails.
SELECT nm_autor, email_autor from autor order by nm_autor; 

--11 Mostrar o título do livro  e o valor unitário de todos os livros que tenham o estoque maior que 5, em ordem de título. 
select titulo,preço from livro where estoque > 5 order by titulo;

--12 Mostrar o menor e o maior valor de todos os livros.
select min(preço), max(preço) from livro;

-- 13) Mostrar a quantidade total vendida por livro.
select livro.titulo, sum(item_venda.qnt_venda) from item_venda, livro 
where livro.id_livro = item_venda.id_livro group by livro.titulo order by livro.titulo;

--14 Qual a média dos valores de todos os livros.
SELECT avg(preço) from livro;

--15 Listar os livros cujos assuntos que começam com “INF”.
SELECT livro.titulo from livro, assunto  
where livro.id_assunto = assunto.id_assunto 
and upper(assunto.desc_assunto) like upper('inf%');

--16 Listar os assuntos que não estão associados a nenhum livro.
SELECT assunto.desc_assunto from assunto  
where not exists ( select * from livro where livro.id_assunto = assunto.id_assunto ); 

--17 Listar os livros que nunca foram vendidos.
select * from item_venda where qnt_venda = 0;

--18 Listas as vendas e o valor total das mesmas.
select livro.titulo, sum(item_venda.qnt_venda * livro.preço) as valor_total_por_livro
from item_venda, livro where livro.id_livro = item_venda.id_venda group by livro.titulo order by titulo;

--19Listar os títulos dos livros e seus assuntos (descrição).
SELECT livro.titulo, desc_assunto from livro, assunto where livro.id_assunto = assunto.id_assunto;

--20 Listar a descrição dos assuntos e a soma dos estoques de livros por assunto.
select assunto.desc_assunto, sum(livro.estoque)  from livro, assunto 
where livro.id_assunto = assunto.id_assunto group by assunto.desc_assunto;

--21 Listar o número de livros por assunto (descrição) que tenham estoque maior que 10 e que tenham mais de 5 livros
SELECT desc_assunto, count(*) from livro, assunto 
where livro.id_assunto = assunto.id_assunto and livro.estoque > 10
group by assunto.desc_assunto having count(*) > 5;

