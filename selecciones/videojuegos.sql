create table videojuegos(
	codigo int not null,
	nombre varchar(50) not null,
	descripcion varchar(300),
	valoracion int not null,
	constraint videojuegos_pk primary key (codigo)
)

insert into videojuegos(codigo, nombre, descripcion, valoracion)
values (1, 'mario_bros', 'el mejor juego sin discucion', 10)

insert into videojuegos(codigo, nombre, descripcion, valoracion)
values (2, 'bomberman', 'Bueno', 8)

insert into videojuegos(codigo, nombre, descripcion, valoracion)
values (3, 'mario_car', 'El mejor juego de carros', 10)

insert into videojuegos(codigo, nombre, descripcion, valoracion)
values (4, 'crash', 'bueno', 5)

insert into videojuegos(codigo, nombre, descripcion, valoracion)
values (5, 'small_bros', 'Buenjuego de peleas', 9)

-- selct
select * from videojuegos where nombre like 'c%'
select * from videojuegos where valoracion between 9 and 10
select * from videojuegos where descripcion is null