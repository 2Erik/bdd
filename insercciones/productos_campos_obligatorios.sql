
create table productos(
	codigo int not null,
	nombre varchar(50) not null,
	descripcion varchar(200),
	prescio money not null,
	stock int not null,
	constraint productos_pk primary key (codigo)
)

--Insertar Datos
 
insert into productos(codigo, nombre, prescio, stock)
values (1, 'pera', 0.30, 20)

insert into productos(codigo, nombre, prescio, stock)
values (2, 'manzana', 0.25, 10)

insert into productos(codigo, nombre, prescio, stock)
values (3, 'arroz', 24.00, 5)
