-- exe 01

create database bd_servico_rh;

use bd_servico_rh;

create table tb_cargo(
  id bigint auto_increment,
  nome_empresa varchar(255),
  nome_cargo varchar(255),
  setor varchar(255),
  
  primary key(id)
);

insert into tb_cargo(nome_empresa, nome_cargo, setor) 
value ("Itaú", "Desenvolvedor java", "Departamento de T.i");

insert into tb_cargo(nome_empresa, nome_cargo, setor) 
value ("Itaú", "Analista de Recursos Humanos", "Departamento de RH");

insert into tb_cargo(nome_empresa, nome_cargo, setor) 
value ("Itaú", "Desenvolvedor javascript", "Departamento de T.i");

insert into tb_cargo(nome_empresa, nome_cargo, setor) 
value ("Itaú", "Analista de Recursos Humanos", "Departamento de RH");

insert into tb_cargo(nome_empresa, nome_cargo, setor) 
value ("Itaú", "Desenvolvedor ruby", "Departamento de T.i");

select * from tb_cargo;


create table tb_funcionarios(
  id bigint auto_increment,
  nome varchar(255)  not null,
  nascimento date not null,
  sexo enum("M","F","B"),
  nis int,
  salario decimal( 10, 2 ),
  id_cargo bigint not  null,
  
  
  primary key(id),
  foreign key (id_cargo) references tb_cargo (id) 
);

insert into tb_funcionarios(nome, nascimento, sexo, nis, salario, id_cargo)
values ("caio", "1997/03/29","M",1212121213, 2000, 1);

insert into tb_funcionarios(nome, nascimento, sexo, nis, salario, id_cargo)
values ("gabriel", "1993/03/28", "M", 121212123, 5000, 2);

insert into tb_funcionarios(nome, nascimento, sexo, nis, salario, id_cargo)
values ("caue", "1992/03/29","B",212121212, 2500, 3);

insert into tb_funcionarios(nome, nascimento, sexo, nis, salario, id_cargo)
values ("maria", "1999/03/29","F",121212123, 4000, 4);

insert into tb_funcionarios(nome, nascimento, sexo, nis, salario, id_cargo)
values ("daniela", "1981/03/29","F",121212122, 6000, 5);

insert into tb_funcionarios(nome, nascimento, sexo, nis, salario, id_cargo)
values ("pedro", "1977/03/12","M",121111123, 1900, 4);

insert into tb_funcionarios(nome, nascimento, sexo, nis, salario, id_cargo)
values ("matheus", "1993/03/28", "M", 121212123, 5000, 2);

insert into tb_funcionarios(nome, nascimento, sexo, nis, salario, id_cargo)
values ("luiz", "1956/03/29","B",212121212, 2500, 3);

insert into tb_funcionarios(nome, nascimento, sexo, nis, salario, id_cargo)
values ("gabriela", "1988/03/29","F",121212123, 4000, 4);

insert into tb_funcionarios(nome, nascimento, sexo, nis, salario, id_cargo)
values ("fernada", "1999/03/29","F",121212123, 1800, 4);

insert into tb_funcionarios(nome, nascimento, sexo, nis, salario, id_cargo)
values ("jessica", "1981/03/29","F",121212122, 6000, 5);

insert into tb_funcionarios(nome, nascimento, sexo, nis, salario, id_cargo)
values ("leticia", "1999/03/29","F",121212122, 6000, 5);

insert into tb_funcionarios(nome, nascimento, sexo, nis, salario, id_cargo)
values ("estrela", "1992/03/29","B",212121212, 2500, 3);

insert into tb_funcionarios(nome, nascimento, sexo, nis, salario, id_cargo)
values ("luisa", "1999/03/29","F",121212123, 4000, 4);

insert into tb_funcionarios(nome, nascimento, sexo, nis, salario, id_cargo)
values ("mariana", "1981/03/29","F",121212122, 6000, 5);

select * from tb_funcionarios;

-- Faça um select que retorne os funcionários com o salário maior do que 2000.
select id, nome, salario from tb_funcionarios where  salario > 2000;

--  Faça um select trazendo  os funcionários com salário entre 1000 e 2000.
select id, nome, salario from tb_funcionarios where  salario >=1000 and salario<=2000;

-- Faça um select  utilizando LIKE buscando os Funcionários com a letra C.
select id, nome  from tb_funcionarios where  nome  like "C%"; 

