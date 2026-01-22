create database Biblioteca;

create table exemplar (
  id_exemplar serial primary key,
  codigo_exemplar varchar(100), 
  localizacao varchar(100),
  status boolean,
  id_obra int);

insert into exemplar (codigo_exemplar,localizacao,status,id_obra)
values ('', '', true, 1),
('', '', true, 2),
('', '', false, 3),
('', '', false, 4),
('', '', true, 5),
('', '', false, 6),
('', '', true, 7),
('', '', false, 8),
('', '', true, 9),
('', '', false, 1);