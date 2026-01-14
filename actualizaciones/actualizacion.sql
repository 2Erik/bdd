update productos set stock = 0
where descripcion is null

update cuentas set saldo = 10
where cedula_propietario like '17%'

update estudiantes set apellido = 'Hernández '
where cedula like '17%'

update registro_entrada set cedula_empleado='082345679'
where codigo_registro between '01/08/2025' and '30/08/2025'

update videojuegos set descripcion ='Mejor puntaje'
where valoracion > 9

update transacciones set tipo 'T'
where monto between money(100) and money(500)
