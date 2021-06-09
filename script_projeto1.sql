create database newtab_projeto1;

use newtab_projeto1;

create table Projeto1(
	id int NOT NULL auto_increment,
    primary key (id),
    tipo varchar(20) NOT NULL,
	nome varchar(50) NOT NULL,
	valor decimal(10,2) NOT NULL,
	data_cadastro datetime NOT NULL
);

insert into Projeto1 (tipo, nome, valor, data_cadastro) values ("venda","Produto 1",+5000.00,NOW());
insert into Projeto1 (tipo, nome, valor, data_cadastro) values ("compra","Produto 3",-1000.00,NOW());

select * from Projeto1 order by data_cadastro asc;

select sum(valor) from Projeto1;

delete from Projeto1;

