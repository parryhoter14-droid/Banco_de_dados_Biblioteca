create database biblioteca;

create table usuario(
	id serial primary key,
	nome varchar (150),
	cpf int8 (11),
	matricula varchar (8),
	email varchar (50),
	telefone char (14),
	login varchar (20),
	senha varchar (100),
	perfil varchar (15),
	status boolean,
	data_cadastro date,
	id_curso int
);