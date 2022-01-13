create database db_escola;

use db_escola;

create table tb_estudantes(
id bigint auto_increment,
nome varchar (255) not null,
idade int,
matricula varchar (255) not null,
situacao varchar (255) not null,
media decimal (6,2) not null,
primary key (id)
);

insert into tb_estudantes (nome, idade, matricula, situacao, media) value ("João", 14, "SP456821", "MATRICULADE", 9.00);
insert into tb_estudantes (nome, idade, matricula, situacao, media) value ("Julia", 16, "SP159357", "MATRICULADE", 8.00);
insert into tb_estudantes (nome, idade, matricula, situacao, media) value ("Gabriela", 15, "SP245365", "MATRICULADE", 7.00);
insert into tb_estudantes (nome, idade, matricula, situacao, media) value ("Marcos", 15, "SP569785", "MATRICULADE", 6.00);
insert into tb_estudantes (nome, idade, matricula, situacao, media) value ("Bruno", 14, "SP420563", "MATRICULADE", 6.00);
insert into tb_estudantes (nome, idade, matricula, situacao, media) value ("Lucas", 15, "SP753951", "MATRICULADE", 5.00);
insert into tb_estudantes (nome, idade, matricula, situacao, media) value ("Pietra", 16, "SP723962", "MATRICULADE", 9.50);
insert into tb_estudantes (nome, idade, matricula, situacao, media) value ("Maya", 15, "SP642576", "MATRICULADE", 8.00);

select nome, media from tb_estudantes where media > 7.00;

select nome, media from tb_estudantes where media < 7.00;

update tb_estudantes set idade = 16 where id = 4;