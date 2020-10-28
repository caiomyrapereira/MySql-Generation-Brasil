-- exe01

create database db_cidade_das_carne;

use db_cidade_das_carne;

create table tb_categoria(
  id bigint auto_increment,
  nome_categoria varchar(255),
  ativo boolean,
  
  primary key(id)
);

insert into tb_categoria( nome_categoria, ativo) 
values ("Porco", true);

insert into tb_categoria( nome_categoria, ativo) 
values ("Boi", true);

insert into tb_categoria( nome_categoria, ativo) 
values ("Galinha", true);

insert into tb_categoria( nome_categoria, ativo) 
values ("Vaca", true);

insert into tb_categoria( nome_categoria, ativo) 
values ("Peixes em geral", true);

select * from tb_categoria;

create table tb_produto(
  id bigint auto_increment,
  nome_produto varchar(255)  not null,
  valor decimal( 10, 2 ),
  kilo decimal(10, 2),
  data_de_producao date not null,
  data_de_vencimento date not null,
  id_categoria bigint not null,
  
  primary key(id),
  foreign key (id_categoria) references tb_categoria (id) 
);

insert into tb_produto( nome_produto, valor, kilo, data_de_producao, data_de_vencimento ,id_categoria)
values ("Bisteca", 21.43, 5 , "2020/06/02", "2020/12/04" , 1);

insert into tb_produto( nome_produto, valor, kilo, data_de_producao, data_de_vencimento ,id_categoria)
values ("ASA DE FRANGO",  4.98, 30, "2020/04/02", "2020/10/04" , 3);

insert into tb_produto( nome_produto, valor, kilo, data_de_producao, data_de_vencimento ,id_categoria)
values ("Fraldinha", 20.98, 2 ,"2020/06/02", "2020/12/04" , 2);

insert into tb_produto( nome_produto, valor, kilo, data_de_producao, data_de_vencimento ,id_categoria)
values ("sushi", 17.65, 5 ,"2020/10/02", "2020/11/04" , 5);

insert into tb_produto( nome_produto, valor, kilo, data_de_producao, data_de_vencimento ,id_categoria)
values ("Lingua",  21.86, 3 ,"2020/06/02", "2020/12/04" , 4);

insert into tb_produto( nome_produto, valor, kilo, data_de_producao, data_de_vencimento ,id_categoria)
values ("Contra filé", 69.92 , 1 ,"2020/06/02", "2020/12/04" , 2);

insert into tb_produto( nome_produto, valor, kilo, data_de_producao, data_de_vencimento ,id_categoria)
values ("Bacalhau", 15.90 , 3 ,"2020/11/02", "2020/12/04" , 5);

insert into tb_produto( nome_produto, valor, kilo, data_de_producao, data_de_vencimento ,id_categoria)
values ("Suã", 4, 5 ,"2020/06/02", "2020/12/04" , 1);


-- Faça um select que retorne os Produtos com o valor maior do que 50 reais.
select  id, nome_produto, valor from tb_produto where valor > 50;

-- Faça um select trazendo  os Produtos com valor entre 3 e 60 reais.
select id, nome_produto, valor from tb_produto where valor >= 3 and valor <= 60;

-- Faça um select  utilizando LIKE buscando os Produtos com as letras CO.
select * from tb_produto where nome_produto like "co%";

-- Faça um um select com Inner join entre  tabela categoria e produto.
select * from tb_produto inner join tb_categoria
on tb_categoria.id = tb_produto.id_categoria; 

-- Faça um select onde traga todos os Produtos de uma categoria específica (exemplo todos os produtos que são cosméticos).
select tb_produto.id, tb_produto.nome_produto, tb_categoria.id as id_categoria, tb_categoria.nome_categoria  from tb_produto inner join tb_categoria
on tb_categoria.id = tb_produto.id_categoria and tb_categoria.nome_categoria = "Porco" ; 



