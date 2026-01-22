create database biblioteca;

create table usuario(
	id serial primary key,
	nome varchar (150),
	cpf int8,
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

insert into usuario (nome, cpf, matricula, email, telefone, login, senha, perfil, status, data_cadastro, id_curso)
value ('João Pedro', 12345678901, '12345601', 'joaopedro@123.com', '(24)912345601', 'login', 'senha', 'adm', true, 'data_cadastro', id_curso),
('Taiane', 12345678902, '12345602', 'taiane@123.com', '(24)912345602', 'login', 'senha', 'perfil', false, 'data_cadastro', id_curso),
('Vinicius', 12345678903, '12345603', 'vinicius@123.com', '(24)912345603', 'login', 'senha', 'perfil', true, 'data_cadastro', id_curso),
('Arthur', 12345678904, '12345604', 'arthur@123.com', '(24)912345604', 'login', 'senha', 'perfil', false, 'data_cadastro', id_curso),
('Julio', 12345678905, '12345605', 'julio@123.com', '(24)912345605', 'login', 'senha', 'perfil', true, 'data_cadastro', id_curso),
('Willian', 12345678906, '12345606', 'willian@123.com', '(24)912345606', 'login', 'senha', 'perfil', false, 'data_cadastro', id_curso),
('Carlos', 12345678907, '12345607', 'carlos@123.com', '(24)912345607', 'login', 'senha', 'perfil', true, 'data_cadastro', id_curso),
('Debora', 12345678908, '12345608', 'debora@123.com', '(24)912345608', 'login', 'senha', 'perfil', false, 'data_cadastro', id_curso),
('Luan', 1234567890, '12345609', 'luan@123.com', '(24)912345609', 'login', 'senha', 'perfil', true, 'data_cadastro', id_curso),
('Carolina', 12345678910, '12345610', 'carolina@123.com', '(24)912345610', 'login', 'senha', 'perfil', false, 'data_cadastro', id_curso);
