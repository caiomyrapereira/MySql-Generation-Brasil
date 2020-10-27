-- exe 02

create database bd_ecommerce;

use bd_ecommerce;

create table tb_categoria(
  id bigint auto_increment,
  nome_categoria varchar(255),
  
  primary key(id)
);

insert into tb_categoria(nome_categoria) 
values ("Alimentos");
insert into tb_categoria(nome_categoria) 
values ("Roupas");
insert into tb_categoria(nome_categoria) 
values ("acessórios");
insert into tb_categoria(nome_categoria) 
values ("Materiais de construção");
insert into tb_categoria(nome_categoria) 
values ("Imoveis");

select * from tb_categoria;

create table tb_produto(
  id bigint auto_increment,
  nome_produto varchar(255)  not null,
  data_de_producao date not null,
  valor decimal( 10, 2 ),
  quantidade int,
  id_categoria bigint not  null,
  
  primary key(id),
  foreign key (id_categoria) references tb_categoria (id) 
);

insert into tb_produto( nome_produto, data_de_producao, valor, quantidade, id_categoria)
values ("Banana", "2020/09/30",1.00, 20, 1);

insert into tb_produto( nome_produto, data_de_producao, valor, quantidade, id_categoria)
values ("Madeira", "2020/01/01",5.00, 100, 4);

insert into tb_produto( nome_produto, data_de_producao, valor, quantidade, id_categoria)
values ("Camiseta polo", "2020/06/01",50.00, 10, 2);

insert into tb_produto( nome_produto, data_de_producao, valor, quantidade, id_categoria)
values ("Arroz", "2020/07/20",10.00, 2, 1);

insert into tb_produto( nome_produto, data_de_producao, valor, quantidade, id_categoria)
values ("Feijão", "2020/08/02",15.00, 20, 1);

insert into tb_produto( nome_produto, data_de_producao, valor, quantidade, id_categoria)
values ("Calça jeans", "2020/09/30",100.00, 5, 2);

insert into tb_produto( nome_produto, data_de_producao, valor, quantidade, id_categoria)
values ("Armario de cozinha", "2020/01/20",500.00, 1, 5);

insert into tb_produto( nome_produto, data_de_producao, valor, quantidade, id_categoria)
values ("Armario de roupas", "2020/01/30",200.00, 20, 5);

insert into tb_produto( nome_produto, data_de_producao, valor, quantidade, id_categoria)
values ("Sushi", "2020/10/20",50.00, 7, 1);

insert into tb_produto( nome_produto, data_de_producao, valor, quantidade, id_categoria)
values ("Cimento", "2020/09/30",20.00, 20, 4);

insert into tb_produto( nome_produto, data_de_producao, valor, quantidade, id_categoria)
values ("Aço", "2020/09/30", 80.00, 20, 4);

insert into tb_produto( nome_produto, data_de_producao, valor, quantidade, id_categoria)
values ("Celular", "2020/06/30",1500.00, 2, 3);

insert into tb_produto( nome_produto, data_de_producao, valor, quantidade, id_categoria)
values ("Nootbok", "2020/09/20",1500.00, 10, 3);

insert into tb_produto( nome_produto, data_de_producao, valor, quantidade, id_categoria)
values ("Fone", "2020/08/20",50.00, 10, 3);

insert into tb_produto( nome_produto, data_de_producao, valor, quantidade, id_categoria)
values ("Banana", "2020/09/30",1.00, 20, 1);

insert into tb_produto( nome_produto, data_de_producao, valor, quantidade, id_categoria)
values ("Maça", "2020/07/21",1.00, 50, 1);

-- resultado

-- Faça um select que retorne os Produtos com o valor maior do que 2000.
Select * from tb_produto where (valor*quantidade) > 2000;

-- Faça um select trazendo  os Produtos com valor entre 1000 e 2000.
Select * from tb_produto where (valor*quantidade) >= 1000 and  (valor*quantidade) <= 2000;

-- Faça um select  utilizando LIKE buscando os Produtos com a letra C.
Select * from tb_produto where nome_produto like "c%";
