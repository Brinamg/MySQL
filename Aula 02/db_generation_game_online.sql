create database db_generation_gamee_online;

use db_generation_gamee_online;

create table tb_classe (
id bigint auto_increment,
nivel int,
elemento varchar(255) not null,
ativo boolean not null,
primary key (id)
);

insert into tb_classe (nivel, elemento, ativo) values (1, "ar", true);
insert into tb_classe (nivel, elemento, ativo) values (2,"terra", true);
insert into tb_classe (nivel, elemento, ativo) values (3, "agua", true); 
insert into tb_classe (nivel, elemento, ativo) values (1, "agua", true);
insert into tb_classe (nivel, elemento, ativo) values (2,"ar", true);


select * from tb_classe;

create table tb_personagem  (
id bigint auto_increment,
nome varchar (255) not null,
idade int not null,
altura decimal(6,2) not null,
origem varchar (255) not null,
poder_de_ataque int not null,
categoria_id bigint,
primary key (id),
FOREIGN KEY (categoria_id) REFERENCES tb_classe (id)
);

insert into tb_personagem (nome, idade, altura, origem, poder_de_ataque, categoria_id) values ("Lana", 20, 1.75, "Lago JAY", 2458, 4);
insert into tb_personagem (nome, idade, altura, origem, poder_de_ataque, categoria_id) values ("May", 23, 2.05, "Pico Laur", 7558, 1);
insert into tb_personagem (nome, idade, altura, origem, poder_de_ataque, categoria_id) values ("Coke", 30, 1.85, "Vila Far", 3456, 2);
insert into tb_personagem (nome, idade, altura, origem, poder_de_ataque, categoria_id) values ("Stuo", 32, 1.95, "Monte K", 7589, 5);
insert into tb_personagem (nome, idade, altura, origem, poder_de_ataque, categoria_id) values ("Alber", 26, 1.65, "Monte K", 4578, 2);
insert into tb_personagem (nome, idade, altura, origem, poder_de_ataque, categoria_id) values ("Des", 18, 1.75, "Vila Jiu", 1458, 5);
insert into tb_personagem (nome, idade, altura, origem, poder_de_ataque, categoria_id) values ("Bae", 19, 1.85, "Pico Laur", 1265, 2);
insert into tb_personagem (nome, idade, altura, origem, poder_de_ataque, categoria_id) values ("Hoy", 26, 2.65, "Lago JAY", 7458, 3);

select nome, poder_de_ataque from tb_personagem  where poder_de_ataque > 2000;

select * from tb_personagem where poder_de_ataque between 1000 and 2000;

select * from tb_personagem where nome like "c%";

select tb_personagem.nome as nome, tb_personagem.poder_de_ataque as ataque, tb_classe.elemento as elemento
from tb_personagem inner join tb_classe
on tb_classe.id = tb_personagem.categoria_id;

select tb_personagem.nome as nome, tb_personagem.poder_de_ataque as ataque, tb_classe.elemento as elemento
from tb_personagem inner join tb_classe 
where tb_classe.elemento like "%agua%";