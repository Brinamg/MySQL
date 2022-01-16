create database db_cidade_das_frutas_;

use db_cidade_das_frutas_;

create table tb_categoria (
id bigint auto_increment,
grupo varchar(255) not null,
tipo varchar(255) not null,
primary key (id)
);

insert into tb_categoria (grupo, tipo) values ("A", "citrícas");
insert into tb_categoria (grupo, tipo) values ("B", "carnosos");
insert into tb_categoria (grupo, tipo) values ("C", "tropicais");
insert into tb_categoria (grupo, tipo) values ("D", "secas indeiscentes");
insert into tb_categoria (grupo, tipo) values ("E", "exóticas");


select * from tb_categoria;

create table tb_produto  (
id bigint auto_increment,
nome varchar (255) not null,
epoca_do_ano varchar (255) not null,
cor varchar (255) not null,
preco_R$_Kg decimal (6,2) not null,
disponivel boolean not null,
categoria_id bigint,
primary key (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id)
);


insert into tb_produto (nome, epoca_do_ano, cor, preco_R$_Kg, disponivel, categoria_id) values ("Melancia","agosto", "verde,vermelha", 1.30, true, 2);
insert into tb_produto (nome, epoca_do_ano, cor, preco_R$_Kg, disponivel, categoria_id) values ("Maça", "dezembro", "vermelha", 4.17, true, 2);
insert into tb_produto (nome, epoca_do_ano, cor, preco_R$_Kg, disponivel, categoria_id) values ("Avelã", "novembro", "marrom", 12.90, true, 4);
insert into tb_produto (nome, epoca_do_ano, cor, preco_R$_Kg, disponivel, categoria_id) values ("Laranja","julho", "laranja", 2.00, true, 1);
insert into tb_produto (nome, epoca_do_ano, cor, preco_R$_Kg, disponivel, categoria_id) values ("Limão", "fevereiro", "verde", 2.75, true, 1);
insert into tb_produto (nome, epoca_do_ano, cor, preco_R$_Kg, disponivel, categoria_id) values ("Lichia","janeiro","vermelha", 8.63, true, 5);
insert into tb_produto (nome, epoca_do_ano, cor, preco_R$_Kg, disponivel, categoria_id) values ("Romã", "setembro","rosa", 13.83,  true, 5);
insert into tb_produto (nome, epoca_do_ano, cor, preco_R$_Kg, disponivel, categoria_id) values ("Abacaxi","dezembro","amarelo", 3.61, true, 3);




select nome, preco_R$_Kg from tb_produto  where preco_R$_Kg > 50.00;

select * from tb_produto where preco_R$_Kg between 3 and 60;

select * from tb_produto where nome like "%c%";

select tb_produto.nome as nome, tb_produto.preco_R$_Kg as preco, tb_categoria.tipo as tipo
from tb_produto inner join tb_categoria
on tb_categoria.id = tb_produto.categoria_id;

select tb_produto.nome as nome, tb_produto.preco_R$_Kg as preco, tb_categoria.tipo as tipo
from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id
where tb_categoria.tipo like "%exóticas%";