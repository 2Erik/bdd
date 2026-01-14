create table estudiantes(
	cedula char(10) not null,
	nombre varchar(50) not null,
	apellido varchar(50) not null,
	email varchar(50) not null,
	fecha_nacimiento date,
	constraint estudiantes_pk primary key (cedula)
)

-- Insertar datos

insert into estudiantes(cedula, nombre, apellido, email, fecha_nacimiento)
values ('1405050824', 'Pepe', 'Duro', 'pepe@gmail.com', '01/01/1991')

insert into estudiantes(cedula, nombre, apellido, email, fecha_nacimiento)
values ('1505050824', 'Juan', 'Paz', 'juan@gmail.com', '02/02/1992')

insert into estudiantes(cedula, nombre, apellido, email, fecha_nacimiento)
values ('1105050824', 'Armando', 'tres', 'armando@gmail.com', '03/03/1993')

insert into estudiantes(cedula, nombre, apellido, email, fecha_nacimiento)
values ('1205050824', 'Maria', 'Sapo', 'maria@gmail.com', '04/04/1994')

insert into estudiantes(cedula, nombre, apellido, email, fecha_nacimiento)
values ('1305050824', 'Carla', 'Lurdez', 'carla@gmail.com', '05/05/1995')

insert into estudiantes(cedula, nombre, apellido, email, fecha_nacimiento)
values ('1605050824', 'Juanito', 'Maez', 'juanito@gmail.com', '06/07/1996')

insert into estudiantes(cedula, nombre, apellido, email, fecha_nacimiento)
values ('1705050824', 'Arturo', 'Dias', 'arturo@gmail.com', '07/06/1996')

insert into estudiantes(cedula, nombre, apellido, email, fecha_nacimiento)
values ('1805050824', 'Das', 'Paes', 'das@gmail.com', '08/01/2004')

-- select

select nombre, cedula from estudiantes
select nombre from estudiantes where cedula like '17%'
select nombre, apellido from estudiantes where nombre like 'A%'
