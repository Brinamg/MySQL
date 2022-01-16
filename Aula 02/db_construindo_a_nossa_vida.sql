create database db_construindo_a_nossa_vida_;

use db_construindo_a_nossa_vida_;

create table tb_categoria (
id bigint auto_increment,
categoria varchar(255) not null,
classificação varchar(255) not null,
primary key (id)
);

insert into tb_categoria (categoria, classificação) values ("piso e revestimento", "acabamentos e acessorios");
insert into tb_categoria (categoria, classificação) values ("material de contrução", "areia e pedra");
insert into tb_categoria (categoria, classificação) values ("material hidráulico", "tubos de conexões");
insert into tb_categoria (categoria, classificação) values ("metais e acessórios", "acabamentos");
insert into tb_categoria (categoria, classificação) values ("ferramentas", "manuais");


select * from tb_categoria;

create table tb_produto  (
id bigint auto_increment,
nome varchar (255) not null,
quantidade int not null,
preco decimal(6,2) not null,
cor  varchar (255) not null,
disponivel boolean not null,
categoria_id bigint,
primary key (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id)
);


insert into tb_produto (nome, quantidade, preco, cor, disponivel, categoria_id) values ("Nicho de Embutir", 1, 252.99, "Branco", true, 1);
insert into tb_produto (nome, quantidade, preco, cor, disponivel, categoria_id) values ("Caneleta Externa para piscina",2, 159.99,"Azul", true, 1);
insert into tb_produto (nome, quantidade, preco, cor, disponivel, categoria_id) values ("Argila Expansiva 20KG", 1, 39.99, "Branca", true, 2);
insert into tb_produto (nome, quantidade, preco, cor, disponivel, categoria_id) values ("Tijolo Comum Ensacado", 10, 10.99, "Vermelho", false, 2);
insert into tb_produto (nome, quantidade, preco, cor, disponivel, categoria_id) values ("Válvula de Retenção para esgoto 100mm", 1, 199.99, "Branca", true, 3);
insert into tb_produto (nome, quantidade, preco, cor, disponivel, categoria_id) values ("Tubo Soldável 20mm", 1, 21.89, "marrom", true, 3);
insert into tb_produto (nome, quantidade, preco, cor, disponivel, categoria_id) values ("Acabamento de Registro", 1, 134.99, "cromado", true, 4);
insert into tb_produto (nome, quantidade, preco, cor, disponivel, categoria_id) values ("Kit de Acessórios X-Line", 33, 94.99,"verde", true, 5);





select nome, preco from tb_produto  where preco > 50.00;

select * from tb_produto where preco between 3 and 60;

select * from tb_produto where nome like "%c%";

select tb_produto.nome as nome, tb_produto.preco as preco, tb_categoria.categoria as categoria
from tb_produto inner join tb_categoria
on tb_categoria.id = tb_produto.categoria_id;

select tb_produto.nome as nome, tb_produto.preco as preco, tb_categoria.categoria 
from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id
where tb_categoria.categoria like "%material de contrução%";