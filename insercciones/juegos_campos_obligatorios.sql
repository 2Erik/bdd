create table videojuegos(
	codigo int not null,
	nombre varchar(50) not null,
	descripcion varchar(300),
	valoracion int not null,
	constraint videojuegos_pk primary key (codigo)
)

insert into videojuegos(codigo, nombre, valoracion)
values (1, 'mario_bros', 10)

insert into videojuegos(codigo, nombre, valoracion)
values (2, 'bomberman', 8)

insert into videojuegos(codigo, nombre, valoracion)
values (3, 'mario_car', 10)
