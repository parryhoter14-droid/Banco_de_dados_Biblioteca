create table emprestimo(
	id_emprestimo serial primary key,
	data_emprestimo date,
	data_devolucao date,
	id_usuario int,
	id_exemplar int,
	status varchar(20)
);

alter table emprestimo add foreign key
(id_usuario) references usuario(id);


alter table emprestimo add foreign key
(id_exemplar) references exemplar(id);