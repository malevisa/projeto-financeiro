create database controleFinanceiro;

use controleFinanceiro;

create table tb_usuario (
idUsuario int primary key auto_increment,
nomeUsuario varchar(45),
sobrenomeUsuario varchar(45),
cargo varchar(45),
email varchar(45),
senha varchar(45)
) auto_increment = 1000;

create table tb_renda (
idRenda int primary key auto_increment,
tipoRenda varchar(45)
) auto_increment = 1;

create table tb_usuario_renda (
idUsuarioRenda int primary key auto_increment,
fkUsuario int,
foreign key (fkUsuario) references tb_usuario(idUsuario),
fkRenda int,
foreign key (fkRenda) references tb_renda(idRenda),
valorVenda double,
proxPagamento date
) auto_increment = 10000;

create table tb_gasto (
idTipoGasto int primary key auto_increment,
tipoGasto varchar(45)
) auto_increment = 100;

create table tb_usuario_gasto (
idUsuarioGasto int primary key auto_increment,
fkTipoGasto int,
foreign key (fkTipoGasto) references tb_gasto(idTipoGasto),
fkUsuario int,
foreign key (fkUsuario) references tb_usuario(idUsuario),
valorGasto double,
isMensal boolean
)auto_increment = 10000;