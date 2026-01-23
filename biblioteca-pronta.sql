create database Biblioteca

create table reserva (
id serial primary key,
data_reserva timestamp,
id_usuario int,
id_exemplar int,
status varchar(15),--
posicao int); --posicao da fila

create table emprestimo(
	id_emprestimo serial primary key,
	data_emprestimo date,
	data_devolucao date,
	id_usuario int,
	id_exemplar int,
	status varchar(20)
);



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



create table exemplar (
  id_exemplar serial primary key,
  codigo_exemplar varchar(100), 
  localizacao varchar(100),
  status boolean,
  id_obra int);


create table curso (
	id_curso serial primary key,
	data_inicial date,
	data_final date,
	nome varchar(70)
);

create table obra (
id_obra serial primary key,
titulo varchar(150),
autor varchar(30),
editora varchar(15),
ano_publicacao int,
isbn varchar(13),
categoria varchar(20),
cutter varchar(10)
);

create table palavra_chave (
id_palavra_chave serial primary key,
descricao varchar(100)
);

create table obra_palavra_chave (
	id_obra INT,
    id_palavra_chave INT,
    PRIMARY KEY (id_obra, id_palavra_chave),
    FOREIGN KEY (id_obra) REFERENCES obra(id_obra),
    FOREIGN KEY (id_palavra_chave) REFERENCES palavra_chave(id_palavra_chave)
);

alter table emprestimo add foreign key
(id_usuario) references usuario(id);


alter table emprestimo add foreign key
(id_exemplar) references exemplar(id_exemplar);

alter table usuario add foreign key
(id_curso) references curso(id_curso);

alter table exemplar add foreign key 
(id_obra) references obra(id_obra);

alter table reserva add foreign key
(id_usuario) references usuario(id);

alter table reserva add foreign key
(id_exemplar) references exemplar(id_exemplar);

insert into CURSO (data_inicial, data_final, nome)
values ('05-01-2026', '06-03-2026', 'Programador Back-End'),
		('02-02-2026', '15-05-2026', 'Programador Front-End'),
		('02-02-2026', '17-04-2026', 'Assistente Administrativo'),
		('02-02-2026', '29-05-2026', 'Mecânico de Manutenção Industrial'),
		('09-02-2026', '30-04-2026', 'Eletricista Instalador Predial'),
		('09-02-2026', '22-05-2026', 'Operador de Computador'),
		('09-02-2026', '10-07-2027', 'Técnico em Desenvolvimento de Sistemas'),
		('09-02-2026', '10-07-2027', 'Técnico em Eletrotécnica'),
		('09-02-2026', '10-07-2027', 'Técnica em Mecânica'),
		('09-02-2026', '10-07-2027', 'Técnico em Segurança do Trabalho');

insert into exemplar (codigo_exemplar,localizacao,status,id_obra)
values ('', '', true, 1),
('', '', true, 2),
('', '', false, 3),
('', '', false, 4),
('', '', true, 1),
('', '', false, 2),
('', '', true, 3),
('', '', false, 4),
('', '', true, 1),
('', '', false, 2);

insert into usuario (nome, cpf, matricula, email, telefone, login, senha, perfil, status, data_cadastro, id_curso)
values ('João Pedro', 12345678901, '12345601', 'joaopedro@123.com', '(24)912345601', 'jp1234', '12345', 'adm', true, '01/01/2026', 1),
('Taiane', 12345678902, '12345602', 'taiane@123.com', '(24)912345602', 'tai123', '12345', 'adm', true, '01/01/2026', 2),
('Vinicius', 12345678903, '12345603', 'vinicius@123.com', '(24)912345603', 'vini12', '12345', 'aluno', true, '01/01/2026', 3),
('Arthur', 12345678904, '12345604', 'arthur@123.com', '(24)912345604', 'art123', '12345', 'professor', false, '01/01/2026', 4),
('Julio', 12345678905, '12345605', 'julio@123.com', '(24)912345605', 'jul123', '12345', 'aluno', true, '01/01/2026', 5),
('Willian', 12345678906, '12345606', 'willian@123.com', '(24)912345606', 'wil123', '12345', 'professor', false, '01/01/2026', 6),
('Carlos', 12345678907, '12345607', 'carlos@123.com', '(24)912345607', 'car123', '12345', 'aluno', true, '01/01/2026', 7),
('Debora', 12345678908, '12345608', 'debora@123.com', '(24)912345608', 'deb123', '12345', 'professor', true, '01/01/2026', 8),
('Marcus', 1234567890, '12345609', 'marcus@123.com', '(24)912345609', 'mar123', '12345', 'aluno', true, '01/01/2026', 9),
('Carolina', 12345678910, '12345610', 'carolina@123.com', '(24)912345610', 'login', '12345', 'aluno', false, '01/01/2026', 10);

insert into reserva (data_reserva, id_usuario, id_exemplar, status, posicao)
values  ('02/01/2026, 9:30 ',1 ,5 ,'liberado ', 1),
		('02/01/2026, 13:03',8 ,8 ,'liberado ',1 ),
		('06/01/2026, 10:32',4 ,2 ,'liberado ',1 ),
		('07/01/2026, 14:01',3 ,2 , 'aguardando ',2 ),
		('07/01/2026, 16:10',6 ,2 , 'aguardando ',3 ),
		('09/01/2026, 8:33',7 ,4 ,'liberado ',1 ),
		('12/01/2026, 9:44',9 ,6 , 'liberado ',1 ),
		('14/01/2026, 11:20',10 ,6 ,'aguardando ',2 ),
		('14/01/2026, 13:19',2 ,3 ,'liberado ',1 ),
		('19/01/2026, 8:54',5 ,4 ,'aguardando ',2 );

insert into obra(titulo, autor, editora, ano_publicacao, isbn, categoria, cutter)
values('Harry Potter e a Câmara Secreta','J.K Rowling', 'Rocco', '2000', '6555320265', 'Fantasia', 'R884'),
('Harry Potter e a Pedra Filosofal','J.K Rowling', 'Rocco', '2002', '8532530788', 'Fantasia', 'R884'),
('Harry Potter e a Ordem da Fênix','J.K Rowling', 'Rocco', '2020', '8532531806', 'Fantasia', 'R884'),
('Harry Potter e o Prisioneiro de Azkaban','J.K Rowling', 'Rocco', '2017', '853253080X', 'Fantasia', 'R884');

insert into palavra_chave(descricao)
values('Fantasia'),
('Magia'),
('Juvenil'),
('Ficção Científica Fantasia');

insert into emprestimo (data_emprestimo, data_devolucao, id_usuario, id_exemplar, status)
values  ('02/01/2026','02/01/2026',1 ,4 ,'Disponível'),
		('02/01/2026','02/01/2026',2 ,3 ,'Disponível'),
		('06/01/2026','02/01/2026',3 ,1 ,'Disponível'),
		('07/01/2026','02/01/2026',3 ,2 , 'Emprestado'),
		('07/01/2026','02/01/2026',4 ,1 , 'Disponível'),
		('09/01/2026','02/01/2026',5 ,3 ,'Disponível'),
		('12/01/2026','02/01/2026',4 ,3 , 'Emprestado'),
		('14/01/2026','02/01/2026',10 ,3 ,'Disponível'),
		('14/01/2026','02/01/2026', 8 ,1 ,'Disponível'),
		('19/01/2026','02/01/2026',9 ,1 ,'Emprestado');