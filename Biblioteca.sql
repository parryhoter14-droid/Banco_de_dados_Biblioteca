create database biblioteca;

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

