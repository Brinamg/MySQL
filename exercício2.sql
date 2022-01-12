create database db_ecommerce;

use db_ecommerce;

create table tb_produtos(
id bigint auto_increment,
modelo varchar (20) not null,
cor varchar (255) not null,
tamanho int,
preco decimal (6,2) not null,
disponibilidade boolean,
primary key (id)
);

insert into tb_produtos (modelo, cor, tamanho, preco, disponibilidade) values ("vestido", "preto", 16, 550.00, true); 
insert into tb_produtos (modelo, cor, tamanho, preco, disponibilidade) values ("vestido", "preto", 40, 550.00, false);
insert into tb_produtos (modelo, cor, tamanho, preco, disponibilidade) values ("vestido", "cinza", 38, 550.00, false);
insert into tb_produtos (modelo, cor, tamanho, preco, disponibilidade) values ("moletom", "preto", 36, 100.00, true);
insert into tb_produtos (modelo, cor, tamanho, preco, disponibilidade) values ("moletom", "azul", 40, 100.00, false);
insert into tb_produtos (modelo, cor, tamanho, preco, disponibilidade) values ("moletom", "preto", 44, 100.00, true);
insert into tb_produtos (modelo, cor, tamanho, preco, disponibilidade) values ("terno", "verde", 40, 250.00, true);
insert into tb_produtos (modelo, cor, tamanho, preco, disponibilidade) values ("terno", "branca", 46, 250.00, true);


select modelo, preco from tb_produtos where preco > 500;

select modelo, preco from tb_produtos where preco < 500;

update tb_produtos set cor = "marrom" where id = 8;