create database newtab_projeto2;

use newtab_projeto2;

create table usuario(
	id int not null auto_increment,
    primary key(id),
	nome  varchar(64) not null,
	imagem varchar(100),
	nome_usuario varchar(50) not null,
	data_cadastro datetime not null
);

create table cartao(
	id int not null auto_increment,
    primary key(id),
	numero bigint not null,
	cvv int not null,
	data_expiracao char(5) not null,
	valido boolean not null,
	data_cadastro datetime not null
);

create table transacao(
	id int not null auto_increment,
    primary key(id),
	id_usuario int,
    foreign key (id_usuario) references usuario(id),
	id_cartao int,
    foreign key (id_cartao) references cartao(id),
	valor float(10,2) not null,
	data_cadastro datetime not null
);

insert into usuario(nome,imagem,nome_usuario,data_cadastro) values ("Eduardo Santos","https://randomuser.me/api/portraits/men/9.jpg","@eduardo.santos",NOW());
insert into usuario(nome,imagem,nome_usuario,data_cadastro) values ("Amanda Souza","https://randomuser.me/api/portraits/women/59.jpg","@amanda.souza",NOW());

select * from usuario order by nome;

insert into cartao(numero,cvv,data_expiracao,valido,data_cadastro) values (1111113435111111,212,"01/21",true,NOW());
insert into cartao(numero,cvv,data_expiracao,valido,data_cadastro) values (4111111111111234,123,"01/20",false,NOW());

select * from cartao where valido=true order by data_cadastro;


drop table cartao;
show tables;
desc cartao;
