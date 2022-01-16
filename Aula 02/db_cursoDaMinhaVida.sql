create database db_cursoDaMinhaVida;

use db_cursoDaMinhaVida;

create table tb_categoria (
id bigint auto_increment,
categoria varchar(255) not null,
compra varchar(255) not null,
cadastre_se varchar(255) not null,
primary key (id)
);

insert into tb_categoria (categoria, compra, cadastre_se) values ("Desenvolvimento", "Cartão de Credito", "E-mail");
insert into tb_categoria (categoria, compra, cadastre_se) values ("Negócios", "Pix", "E-mail");
insert into tb_categoria (categoria, compra, cadastre_se) values ("Desing", "Boleto","E-mail");
insert into tb_categoria (categoria, compra, cadastre_se) values ("Música", "Cartão de credito", "E-mail");
insert into tb_categoria (categoria, compra, cadastre_se) values ("TI", "Pix", "E-mail");


select * from tb_categoria;

create table tb_curso  (
id bigint auto_increment,
nome_curso varchar (255) not null,
preco decimal (6,2) not null,
duracao varchar (255) not null,  
usuario varchar (255) not null,
senha varchar (8) not null,
categoria_id bigint,
primary key (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id)
);


insert into tb_curso (nome_curso, preco, duracao, usuario, senha, categoria_id) values ("Desenvolvimento Web", 104.00, "9h", "Maria", "Mkso4587", 1);
insert into tb_curso (nome_curso, preco, duracao, usuario, senha, categoria_id) values ("Data science", 152.99, "12h", "George", "Gncd4250", 1);
insert into tb_curso (nome_curso, preco, duracao, usuario, senha, categoria_id) values ("Empreendedorismo", 299.44, "13h","Matheus", "Mjfs5698", 2);
insert into tb_curso (nome_curso, preco, duracao, usuario, senha, categoria_id) values ("Ferramentas de design", 219.00, "8h" "Lucas", "Lmka7589", true, 3);
insert into tb_curso (nome_curso, preco, duracao, usuario, senha, categoria_id) values ("Design gráfico", 252.99, "14h", "Flávia", "Fnkm4586", 3);
insert into tb_curso (nome_curso, preco, duracao, usuario, senha, categoria_id) values ("Fundamentos da música", 52.99, "8h", "Julia", "Jmds4587", 4);
insert into tb_curso (nome_curso, preco, duracao, usuario, senha, categoria_id) values ("Canto", 82.99, "5h", "Gabriel", "sJcn2546", 4);
insert into tb_curso (nome_curso, preco, duracao, usuario, senha, categoria_id) values ("Rede e Segurança", 252.99, "12h", "Carla", "Cjdi4584", 5);




select nome_curso, preco from tb_curso  where preco > 50.00;

select * from tb_curso where preco between 3 and 60;

select * from tb_curso where nome_curso like "%j%";

select tb_curso.nome_curso as nome, tb_curso.preco as preco, tb_categoria.categoria as categoria
from tb_curso inner join tb_categoria
on tb_categoria.id = tb_curso.categoria_id;

select tb_curso.nome_curso as nome, tb_curso.preco as preco, tb_categoria.categoria as categoria
from tb_curso inner join tb_categoria on tb_categoria.id = tb_curso.categoria_id
where tb_categoria.categoria like "%Desenvolvimento%";