-- exe 02

create database db_ecommerce;
use db_ecommerce;

create table tb_funcionarios(
  id bigint auto_increment,
  nome varchar(255)  not null,
  qtd_estoque int  not null,
  descricao varchar(255)  not null,
  preco decimal(10,2),
  
  PRIMARY KEY(id)
);


insert into tb_funcionarios (nome, qtd_estoque, descricao, preco) 
values ("banana", 12, "caixa  de banana", 20.00); 

insert into tb_funcionarios (nome, qtd_estoque, descricao, preco) 
values ("xbox series", 1, "console de video game da microsoft", 5000.00); 

insert into tb_funcionarios (nome, qtd_estoque, descricao, preco) 
values ("playstation 5", 1, "console de video game da sony", 6000.00); 

insert into tb_funcionarios (nome, qtd_estoque, descricao, preco) 
values ("switch ", 1 , "console de video game da nintendo", 3000.00); 

insert into tb_funcionarios (nome, qtd_estoque, descricao, preco) 
values ("intel 7", 1 , "processador da intel 7 da ultima geração", 1000.00); 

-- Faça um select que retorne os produtos com o valor maior do que 500.
select * from tb_funcionarios where preco>500;

-- Faça um select que retorne os produtos com o valor menor do que 500.
select * from tb_funcionarios where preco<500;



