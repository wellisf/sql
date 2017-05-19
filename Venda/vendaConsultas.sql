--item 1
--select v.nome_produto, preco_produto from Produto as v;

--item 2
--select nome_cliente, uf_cliente, salario_cliente from Cliente;

--item 3
--select * from Produto order by nome_produto;

--item 4
--select nome_produto, (preco_produto * nroestoque_produto) as Inventario from Produto;

--item 5
--select nome_cliente, cdvenda from Cliente join Venda on cdcliente = cdvenda order by data_venda; 

--item 6
--select cdproduto, nome_produto, nroestoque_produto from Produto where preco_produto < 1;

--item 7
--select cdproduto from Produto join Venda on cdproduto = cdvenda where data_venda = '15/05/2015';

--item 8
--select nome_cliente from Venda join Cliente on cdvenda = cdcliente where upper(tipo_venda) = upper('Dinheiro');

--item 9
--select telefone_cliente from Cliente join Produto on cdproduto = cdcliente where upper(nome_produto) = upper('Arroz');

--item 10
--select * from Produto where upper(nome_produto) like upper('%rr%');

--item 11
--select avg(salario_cliente) as media_RJ from Cliente where upper(uf_cliente) = upper('rj');

--item 12
--select sum(salario_cliente) as total_RJ from Cliente where upper(uf_cliente) = upper('rj');

--item 13
--select nome_produto, sum(Item.qtd_item) as vendidos from Produto join Item on Item.cdproduto = Produto.cdproduto group by nome_produto;

--item 14
--insert into Produto values (21,'Refrigerante',10, 1.90);

--item 15
--delete from Cliente where upper(uf_cliente) = upper('Bahia');

--item 16
--update Cliente SET salario_cliente = 1300 where cdcliente = 3;

--item 17
--delete from Cliente where cdcliente = 5;