create database db_funcionarios1;

use db_funcionarios1;

create table tb_funcionarios1(
id bigint auto_increment,
nome varchar (255) not null,
idade int,
cargo varchar (255) not null,
cidade varchar (255) not null,
salario decimal (6,2) not null,
primary key (id)
);

insert into tb_funcionarios1 (nome, idade, cargo, cidade,salario) value ("Marcia", 34, "Supevisora", "São Paulo", 4100.00);
insert into tb_funcionarios1 (nome, idade, cargo, cidade,salario) value ("Julia", 21, "Estagiária", "Campinas", 1500.00);
insert into tb_funcionarios1 (nome, idade, cargo, cidade,salario) value ("Gabriela", 25, "Desenvolvedora Sn", "São Paulo", 3100.00);
insert into tb_funcionarios1 (nome, idade, cargo, cidade,salario) value ("Marcos", 36, "Supevisor", "Campinas", 4100.00);
insert into tb_funcionarios1 (nome, idade, cargo, cidade,salario) value ("Bruno", 19, "Estagiário", "São Paulo", 1500.00);

select nome, salario from tb_funcionarios1 where salario > 2000.00;

select nome, salario from tb_funcionarios1 where salario < 2000.00;

update tb_funcionarios1 set idade = 35 where id = 1;
