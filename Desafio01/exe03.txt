-- exe 03

create database bd_escola;

use bd_escola;

create table tb_funcionarios(
  id bigint auto_increment,
  nome varchar(255)  not null,
  escola varchar(255)  not null,
  ano_de_escolaridade varchar(255)  not null,
  nota float not null,
  
  PRIMARY KEY(id)
);

insert into tb_funcionarios (nome, escola, ano_de_escolaridade, nota) 
values ("naya", "dom camilo", "2º ano", 10); 

insert into tb_funcionarios (nome, escola, ano_de_escolaridade, nota) 
values ("caio", "dom camilo", "4º ano", 5); 

insert into tb_funcionarios (nome, escola, ano_de_escolaridade, nota) 
values ("pedro", "dom camilo", "6º ano", 8); 

insert into tb_funcionarios (nome, escola, ano_de_escolaridade, nota ) 
values ("jessica", "dom camilo", "3ª ano", 4); 

insert into tb_funcionarios (nome, escola, ano_de_escolaridade, nota) 
values ("maria", "dom camilo", "9º ano", 7); 

-- Faça um select que retorne o/as alunos/a com a nota maior do que 7.
select * from tb_funcionarios where nota > 7;

-- Faça um select que retorne o/as alunos/a com a nota menor do que 7.
select * from tb_funcionarios where nota > 7;