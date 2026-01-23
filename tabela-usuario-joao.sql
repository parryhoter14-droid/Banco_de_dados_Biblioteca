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
value ('João Pedro', 12345678901, '12345601', 'joaopedro@123.com', '(24)912345601', 'jp1234', '12345', 'adm', true, '01/01/2026', 1),
('Taiane', 12345678902, '12345602', 'taiane@123.com', '(24)912345602', 'tai123', '12345', 'adm', true, '01/01/2026', 2),
('Vinicius', 12345678903, '12345603', 'vinicius@123.com', '(24)912345603', 'vini12', '12345', 'aluno', true, '01/01/2026', 3),
('Arthur', 12345678904, '12345604', 'arthur@123.com', '(24)912345604', 'art123', '12345', 'professor', false, '01/01/2026', 4),
('Julio', 12345678905, '12345605', 'julio@123.com', '(24)912345605', 'jul123', '12345', 'aluno', true, '01/01/2026', 5),
('Willian', 12345678906, '12345606', 'willian@123.com', '(24)912345606', 'wil123', '12345', 'professor', false, '01/01/2026', 6),
('Carlos', 12345678907, '12345607', 'carlos@123.com', '(24)912345607', 'car123', '12345', 'aluno', true, '01/01/2026', 7),
('Debora', 12345678908, '12345608', 'debora@123.com', '(24)912345608', 'deb123', '12345', 'professor', true, '01/01/2026', 8),
('Marcus', 1234567890, '12345609', 'marcus@123.com', '(24)912345609', 'mar123', '12345', 'aluno', true, '01/01/2026', 9),
('Carolina', 12345678910, '12345610', 'carolina@123.com', '(24)912345610', 'login', '12345', 'aluno', false, '01/01/2026', 10);
