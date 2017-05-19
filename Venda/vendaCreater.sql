create table if not exists Venda (
	
	cdvenda int not null,
	data_venda date,
	tipo_venda varchar(30),

	constraint pk_Clinica primary key(cdvenda)
); 

create table if not exists Produto (

	cdproduto int not null,
	nome_produto varchar(50),
	nroestoque_produto int,
	preco_produto real,

	constraint pk_Produto primary key(cdproduto)
);

create table if not exists Cliente (

	cdcliente int not null,
	nome_cliente varchar(40),
	telefone_cliente int,
	uf_cliente varchar(2),
	salario_cliente real,

	constraint pk_Cliente primary key(cdcliente)
);

create table if not exists Item (

	cdvenda  int not null,
	cdproduto int not null,
	qtd_item int,
	valor_item real,

	constraint fk_Item_Venda foreign key (cdvenda) references Venda(cdvenda),
	constraint fk_Item_Produto foreign key (cdproduto) references Produto(cdproduto),

	constraint pk_Item primary key(cdvenda, cdproduto) 
);

create table if not exists Tem (

	cdvenda int not null,
	cdcliente int not null,

	constraint fk_Tem_Venda foreign key (cdvenda) references Venda(cdvenda),
	constraint fk_Tem_Cliente foreign key (cdcliente) references Cliente(cdcliente),

	constraint pk_Tem primary key(cdvenda)
);



