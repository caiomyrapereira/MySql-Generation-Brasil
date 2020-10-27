Create database db_servico_rh;

use db_servico_rh;

create table tb_funcionarios(
  id bigint auto_increment,
  nome varchar(255)  not null,
  cargo varchar(255)  not null,
  setor varchar(255)  not null,
  salario decimal,
  
  PRIMARY KEY(id)
);

insert into tb_funcionarios (nome, cargo, setor, salario) 
values ("naya", "recursos humanos", "departamento de rh", 1000.00); 

insert into tb_funcionarios (nome, cargo, setor, salario) 
values ("caio", "desenvolvedor java", "departamento de t.i", 2000.00); 

insert into tb_funcionarios (nome, cargo, setor, salario) 
values ("pedro", "recursos humanos", "departamento de rh", 3000.00); 

insert into tb_funcionarios (nome, cargo, setor, salario) 
values ("jessica", "desenvolvedor javascript", "departamento de t.i", 1500.00); 

insert into tb_funcionarios (nome, cargo, setor, salario) 
values ("maria", "desenvolvedor ruby", "departamento de t.i", 5000.00); 

-- Maior do que 2000reias
select * from tb_funcionarios where salario > 2000;

-- Menor do que 2000reias
select * from tb_funcionarios where salario < 2000;