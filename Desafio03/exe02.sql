	-- exe02
    
create database db_construindo_a_nossa_vida;

use db_construindo_a_nossa_vida;

create table tb_categoria(
  id bigint auto_increment,
  nome_categoria varchar(255),
  ativo boolean,
  
  primary key(id)
);

insert into tb_categoria( nome_categoria, ativo) 
values ("Adobe", true);

insert into tb_categoria( nome_categoria, ativo) 
values ("Aglomerante", true);

insert into tb_categoria( nome_categoria, ativo) 
values ("Argila expandida", true);

insert into tb_categoria( nome_categoria, ativo) 
values ("Asbesto-cimento", true);

insert into tb_categoria( nome_categoria, ativo) 
values ("Ladrilho hidráulico", true);

select * from tb_categoria;

create table tb_produto(
  id bigint auto_increment,
  nome_produto varchar(255)  not null,
  valor decimal( 10, 2 ),
  quantidade decimal(10, 2),
  data_de_producao date not null,
  id_categoria bigint not null,
  
  primary key(id),
  foreign key (id_categoria) references tb_categoria (id) 
);

insert into tb_produto( nome_produto, valor, quantidade, data_de_producao, id_categoria)
values ("tijolo adobe", 0.30, 1000, "2020/06/02" , 1);

insert into tb_produto( nome_produto, valor, quantidade, data_de_producao, id_categoria)
values ("Cimento", 3, 10, "2020/07/02" , 2);

insert into tb_produto( nome_produto, valor, quantidade, data_de_producao, id_categoria)
values ("Gesso", 3, 10, "2020/10/02" , 2);

insert into tb_produto( nome_produto, valor, quantidade, data_de_producao, id_categoria)
values ("TelhadoS", 46.00 , 50, "2020/06/02" , 4);

insert into tb_produto( nome_produto, valor, quantidade, data_de_producao, id_categoria)
values ("Ecológico Vitaplan", 7, 20, "2020/07/02" , 3);

insert into tb_produto( nome_produto, valor, quantidade, data_de_producao, id_categoria)
values ("Gesso", 3, 20, "2020/10/02" , 2);

insert into tb_produto( nome_produto, valor, quantidade, data_de_producao, id_categoria)
values ("piso", 10, 100, "2020/08/02" , 5);

insert into tb_produto( nome_produto, valor, quantidade, data_de_producao, id_categoria)
values ("Cimento", 4, 20, "2020/07/02" , 2);

select * from tb_produto;

-- Faça um select que retorne os Produtos com o valor maior do que 50 reais.
select  id, nome_produto, valor from tb_produto where valor > 50;

-- Faça um select trazendo  os Produtos com valor entre 3 e 60 reais.
select id, nome_produto, valor from tb_produto where valor >= 3 and valor <= 60;

-- Faça um select  utilizando LIKE buscando os Produtos com as letras CO.
select * from tb_produto where nome_produto like "ci%";

-- Faça um um select com Inner join entre  tabela categoria e produto.
select * from tb_produto inner join tb_categoria
on tb_categoria.id = tb_produto.id_categoria; 

-- Faça um select onde traga todos os Produtos de uma categoria específica (exemplo todos os produtos que são cosméticos).
select tb_produto.id, tb_produto.nome_produto, tb_categoria.id as id_categoria, tb_categoria.nome_categoria  from tb_produto inner join tb_categoria
on tb_categoria.id = tb_produto.id_categoria and tb_categoria.nome_categoria = "Aglomerante" ; 