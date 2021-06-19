create database newtab_projeto3;

use newtab_projeto3;

create table Usuario(
	id int not null auto_increment,
    primary key(id),
    usuario varchar(255) not null,
    senha varchar(255) not null,
    data_insercao datetime not null
);

CREATE UNIQUE INDEX user_name ON Usuario(usuario);
CREATE INDEX user_id ON Usuario(id);

create table Hashtag(
	id int not null auto_increment,
    primary key(id),
    id_usuario int,
    foreign key(id_usuario) references Usuario(id) on delete cascade,
    texto varchar(255) not null,
    data_insercao datetime not null
);

CREATE UNIQUE INDEX hash_id ON Hashtag(id);
CREATE INDEX hash_user ON Hashtag(id_usuario);
CREATE INDEX hash_text ON Hashtag(texto);

create table Publicacao(
	id int not null auto_increment,
    primary key(id),
    id_hashtag int,
    foreign key (id_hashtag) references Hashtag(id) on delete cascade,
    id_usuario_twitter bigint not null,
    texto_publi text,
    imagem_publicacao varchar(255),
    data_criacao datetime not null
);

CREATE UNIQUE INDEX publi_id ON Publicacao(id);
CREATE INDEX publi_id_hash ON Publicacao(id_hashtag);
CREATE INDEX publi_id_twit_user ON Publicacao(id_usuario_twitter);

insert into Usuario(usuario, senha, data_insercao) values ("contato@newtab.com",md5("12345"),now());

select * from Usuario;

insert into Hashtag(texto, id_usuario, data_insercao) values ("natureza", 1, now());

select * from Hashtag;

insert into Publicacao(id_hashtag, id_usuario_twitter, texto_publi, data_criacao) values (
	1,
    2244994945,
    "As we work towards building the new Twitter API, we’ve extended the deprecation timeline for several Labs v1 endpoints. Learn more 📖 https://t.co/rRWaJYJgKk",
    now()
);

select * from Publicacao;

select * from Publicacao inner join Hashtag ON Publicacao.id_hashtag = Hashtag.id inner join Usuario ON Hashtag.id_usuario = Usuario.id;

delete from usuario where id=1;

update usuario set senha = md5("abcde") where id=1;


drop database newtab_projeto3;
show tables;
desc publicacao;

