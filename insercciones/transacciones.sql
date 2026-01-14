create table transacciones(
	codigo int not null,
	numero_cuenta char(5) not null,
	monto money,
	tipo char(1),
	fecha date,
	hora time,
	constraint transacciones_pk primary key (codigo)
)

insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values (23541, '52145', 5.00, 'C', '14/08/2025', '07:54')

insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values (33541, '10145', 5.00, 'D', '22/01/2025', '12:54')

insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values (43541, '02145', 5.00, 'C', '15/03/2025', '06:54')

insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values (53541, '12145', 5.00, 'D', '12/08/2025', '07:54')

insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values (23541, '52145', 5.00, 'C', '30/08/2025', '07:54')

insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values (63541, '59145', 5.00, 'C', '26/08/2025', '07:54')

insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values (73541, '54145', 5.00, 'C', '11/08/2025', '07:54')

insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values (83541, '42145', 5.00, 'C', '10/08/2025', '07:54')

insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values (93541, '32145', 5.00, 'C', '04/08/2025', '07:54')

insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values (20541, '22145', 5.00, 'D', '05/01/2026', '07:54')