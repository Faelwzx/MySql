Create database Exemplo1;

use Exemplo1;

create table tbPessoa(
    idPessoa int not null auto_increment,
    nome varchar(50),
    idade int not null,
    constraint pk_tbPessoa primary key(idPessoa)
);

create table tbLoja(
    idLoja int auto_increment,
    nome varchar(50),
    constraint pk_tbLoja primary key(idLoja)
);

create table tbProduto(
    idProduto int auto_increment,
    nome varchar(50),
    preco decimal(10,2),
    constraint pk_tbProduto primary key(idProduto)
);

create table tbVenda(
    idVenda int auto_increment,
    idPessoa int,
    idLoja int,
    idProduto int,
    constraint pk_tbVenda primary key(idVenda),
    constraint fk_tbVenda_tbPessoa foreign key(idPessoa) references tbPessoa(idPessoa),
    constraint fk_tbVenda_tbLoja foreign key(idLoja) references tbLoja(idLoja),
    constraint fk_tbVenda_tbProduto foreign key(idProduto) references tbProduto(idProduto)
);







