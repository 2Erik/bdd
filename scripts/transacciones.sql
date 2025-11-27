create table transacciones(
	codigo int not null,
	numero_cuenta char(5) not null,
	monto money,
	tipo char(1),
	fecha date,
	hora time,
	constraint transacciones_pk primary key (codigo)
)