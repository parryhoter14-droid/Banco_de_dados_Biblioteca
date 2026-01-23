create database Biblioteca;

create table CURSO (
	id_curso serial primary key,
	data_inicial date,
	data_final date,
	nome varchar(70)
);

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