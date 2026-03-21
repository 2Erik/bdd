create table usuarios(
	iid int,
	nombre varchar(25) not null,
	apellido varchar(25) not null,
	fecha_nacimiento date,
	constraint usuarios_pk primary key(iid)
);

create table grupo(
	iid int,
	nombre varchar(25) not null,
	descripcion varchar(75),
	fecha_creacion date,
	constraint grupo_pk primary key(iid)
);

create table usuario_grupo(
	us_id int not null,
	gr_id int not null,
	constraint usuario_fk foreign key(us_id)
	references usuarios(iid),
	constraint grupo_fk foreign key(gr_id)
	references grupo(iid),
	constraint usuario_grupo_pk primary key(us_id, gr_id)
);

create table habitaciones(
	habitacion_numero int,
	precio_por_noche decimal not null,
	piso int not null,
	max_personas int,
	constraint habitacion_pk primary key(habitacion_numero)
);

create table huespedes(
	idd int,
	nombre varchar(45) not null,
	apellido varchar(45) not null,
	telefono char(10),
	correo varchar(45),
	direccion varchar(45),
	ciudad varchar(45),
	piso int,
	constraint huespedes_pk primary key(idd)
);

create table reservas(
	inicio_fecha date not null,
	fin_fecha date not null,
	habitacion int not null,
	huesped_id int not null,
	constraint habitacion_pk foreign key(habitacion)
	references habitaciones(habitacion_numero),
	constraint huespedes foreign key(huesped_id)
	references huespedes(idd),
	constraint reservas_pk primary key(habitacion, huesped_id)
);

create table ciudad(
	idd int,
	nombre varchar(45) not null,
	constraint ciudad_pk primary key(idd)
);

create table municipio(
	idd int,
	nombre varchar(45),
	ciudad_id int,
	constraint municipio_pk primary key(idd),
	constraint ciudad_fk foreign key(ciudad_id)
	references ciudad(idd)
);

create table proyecto(
	idd int,
	proyecto varchar(50) not null,
	monto money not null,
	fecha_inicio date,
	fecha_entrega date,
	constraint proyecto_pk primary key(idd)
);

create table proyecto_municipio(
	municipio_id int not null,
	proyecto_id int not null,
	constraint municipio_fk foreign key(municipio_id)
	references municipio(idd),
	constraint proyecto_fk foreign key(proyecto_id)
	references proyecto(idd),
	constraint proyecto_municipio_pk primary key(municipio_id, proyecto_id)
);
