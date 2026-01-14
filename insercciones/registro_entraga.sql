
create table registro_entrada(
	codigo_registro int not null,
	cedula_empleado char(10) not null,
	fecha date,
	constraint registro_entrada_pk primary key (codigo_registro)
)

insert into registro_entrada(codigo_registro, cedula_empleado, fecha)
values (1, '0505050824', 20/01/2025)

insert into registro_entrada(codigo_registro, cedula_empleado, fecha)
values (2, '1505050824', 20/01/2025)

insert into registro_entrada(codigo_registro, cedula_empleado, fecha)
values (3, '1205050824', 20/01/2025)

insert into registro_entrada(codigo_registro, cedula_empleado, fecha)
values (4, '0505050824', 20/01/2025)

insert into registro_entrada(codigo_registro, cedula_empleado, fecha)
values (5, '0505050824', 20/01/2025)

insert into registro_entrada(codigo_registro, cedula_empleado, fecha)
values (6, '2505050824', 20/01/2025)

insert into registro_entrada(codigo_registro, cedula_empleado, fecha)
values (7, '1505050824', 20/01/2025)

insert into registro_entrada(codigo_registro, cedula_empleado, fecha)
values (8, '0805050824', 20/01/2025)

insert into registro_entrada(codigo_registro, cedula_empleado, fecha)
values (9, '0705050824', 20/01/2025)

insert into registro_entrada(codigo_registro, cedula_empleado, fecha)
values (10, '3505050824', 20/01/2025)