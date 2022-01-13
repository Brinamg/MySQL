create database db_pizzaria_legal_;

use db_pizzaria_legal_;

create table tb_categoria (
id bigint auto_increment,
ingrediente varchar(255) not null,
tamanho varchar(255) not null,
op varchar(255) not null,
primary key (id)
);

insert into tb_categoria (ingrediente, tamanho, op) values ("frango", "8 pedaços", "salgada");
insert into tb_categoria (ingrediente, tamanho, op) values ("carne bovina","4 pedaços", "salgada");
insert into tb_categoria (ingrediente, tamanho, op) values ("vegetariana", "8 pedaços", "salgada"); 
insert into tb_categoria (ingrediente, tamanho, op) values ("chocolate", "broto", "doce");
insert into tb_categoria (ingrediente, tamanho, op) values ("frutas","4 pedaços", "doce");


select * from tb_categoria;

create table tb_pizza  (
id bigint auto_increment,
sabor varchar (255) not null,
preco decimal(6,2) not null,
avaliacao int not null,
promocao boolean not null,
disponivel boolean not null,
categoria_id bigint,
primary key (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id)
);

insert into tb_pizza (sabor, preco, avaliacao, promocao, disponivel, categoria_id) values ("Calabresa", 25.00, 4, true, true, 2);
insert into tb_pizza (sabor, preco, avaliacao, promocao, disponivel, categoria_id) values ("Frango com catupiry", 36.00, 5, false, true, 1);
insert into tb_pizza (sabor, preco, avaliacao, promocao, disponivel, categoria_id) values ("Marguerita", 46.00, 5, false, true, 3);
insert into tb_pizza (sabor, preco, avaliacao, promocao, disponivel, categoria_id) values ("Brócolis", 48.00, 3, true, true, 3);
insert into tb_pizza (sabor, preco, avaliacao, promocao, disponivel, categoria_id) values ("Morango", 20.00, 4, true, true, 5);
insert into tb_pizza (sabor, preco, avaliacao, promocao, disponivel, categoria_id) values ("Banofe", 32.00, 5, false, true, 5);
insert into tb_pizza (sabor, preco, avaliacao, promocao, disponivel, categoria_id) values ("Chocolate", 20.00, 3, true, true, 4);
insert into tb_pizza (sabor, preco, avaliacao, promocao, disponivel, categoria_id) values ("Creme de avelã", 21.99, 2, false, false, 4);


select sabor, preco from tb_pizza  where preco > 45.00;

select * from tb_pizza where preco between 29 and 60;

select * from tb_pizza where sabor like "c%";

select tb_pizza.sabor as nome, tb_pizza.preco as preco, tb_categoria.tamanho as tamanho
from tb_pizza inner join tb_categoria
on tb_categoria.id = tb_pizza.categoria_id;

select tb_pizza.sabor as sabor, tb_pizza.preco as preco, tb_categoria.op 
from tb_pizza inner join tb_categoria
where tb_categoria.op like "%salgada%";