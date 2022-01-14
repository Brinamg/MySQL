create database db_farmaciaa_do_bem;

use db_farmaciaa_do_bem;

create table tb_categoria (
id bigint auto_increment,
classe varchar(255) not null,
disponivel boolean not null,
primary key (id)
);

insert into tb_categoria (classe, disponivel) values ("higiene pessoal", true);
insert into tb_categoria (classe, disponivel) values ("generico", true);
insert into tb_categoria (classe, disponivel) values ("dermatologico", true); 
insert into tb_categoria (classe, disponivel) values ("home care", true);
insert into tb_categoria (classe, disponivel) values ("saúde e bem estar", true);


select * from tb_categoria;

create table tb_produto(
id bigint auto_increment,
nome varchar (255) not null,
preco decimal(6,2) not null,
quantidade int not null,
prescricao boolean not null,
categoria_id bigint,
primary key (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id)
);

insert into tb_produto (nome, preco, quantidade, prescricao, categoria_id) values ("Anti-inflamatorio", 56.00, 10, false, 2);
insert into tb_produto (nome, preco, quantidade, prescricao, categoria_id) values ("Colírio", 16.00, 1, false, 2);
insert into tb_produto (nome, preco, quantidade, prescricao, categoria_id) values ("Teste de COVID", 196.90, 1, false, 4);
insert into tb_produto (nome, preco, quantidade, prescricao, categoria_id) values ("Vitamina C", 26.00, 10, false, 4);
insert into tb_produto (nome, preco, quantidade, prescricao, categoria_id) values ("Shampoo", 36.00, 1, false, 1);
insert into tb_produto (nome, preco, quantidade, prescricao, categoria_id) values ("Hidratante", 56.00, 1, false, 1);
insert into tb_produto (nome, preco, quantidade, prescricao, categoria_id) values ("Modik", 153.00, 12, true, 5);
insert into tb_produto (nome, preco, quantidade, prescricao, categoria_id) values ("Frauda", 79.90, 60, false, 3);


select nome, preco from tb_produto  where preco > 50.00;

select * from tb_produto where preco between 3 and 60;

select * from tb_produto where nome like "%b%";

select tb_produto.nome as nome, tb_produto.preco as preco, tb_categoria.classe as classe
from tb_produto inner join tb_categoria
on tb_categoria.id = tb_produto.categoria_id;

select tb_produto.nome as nome, tb_produto.preco as preco, tb_categoria.classe 
from tb_produto inner join tb_categoria
where tb_categoria.classe like "%hig%";