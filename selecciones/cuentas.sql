
create table cuentas(
	numero_cuenta char(7) not null,
	cedula_propietario char(10) not null,
	fecha_creacion date not null,
	saldo money not null,
	constraint cuentas_pk primary key (numero_cuenta)
)

-- Insertar datos

insert into cuentas(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values('2200589', '1505050825', '14/01/2023', 504.25)

insert into cuentas(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values('2100589', '1205050825', '12/03/2000', 300.25)

insert into cuentas(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values('2200581', '1105050825', '14/11/1999', 1000.25)

insert into cuentas(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values('2200582', '1305050825', '14/01/1980', 400.05)

insert into cuentas(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values('2200583', '1405050825', '14/01/2021', 6025.25)

insert into cuentas(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values('2200584', '1605050825', '14/03/2000', 25.00)

insert into cuentas(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values('2200585', '1705050825', '20/01/2001', 200.00)

insert into cuentas(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values('2200546', '1805050825', '14/01/2003', 300.25)

insert into cuentas(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values('2200587', '1905050825', '8/01/1995', 478.06)

insert into cuentas(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values('2200588', '1005050825', '14/07/1999', 1230.74)

-- select
select numero_cuenta, saldo from cuentas
select * from cuentas where fecha_creacion between '13/01/2026' and '13/11/2025'
select numero_cuenta, saldo from cuentas where fecha_creacion between '13/01/2026' and '13/11/2025'