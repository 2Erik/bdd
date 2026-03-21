select ha.habitacion_numero, hu.nombre, hu.apellido
from habiataciones ha, huespedes hu, reservas r
where ha.habitacion_numero = r.habitacion
and hu.idd = r.huesped_id

select hu.nombre, hu.apellido
from huespedes hu
where idd in (
	select huesped_id
	from reservas
	where habitacion = 2
)

select ha.habitacion_numero, count(r.huesped_id) cantidad
from habitaciones ha, reservas r
where ha.habitacion_numero = r.habitacion
group by ha.habitacion_numero

--CONSULTA 2

select ha.habitacion_numero, ha.piso, hu.nombre, hu.apellido
from habitaciones ha, huespedes hu, reservas r
where ha.habitacion_numero = r.habitacion
and hu.idd = r.huesped_id
and ha.piso = 4

select hu.nombre, hu.apellido
from huespedes hu
where hu.idd in(
	select huesped_id
	from reservas
	where habitacion = 3
)

select ha.habitacion_numero, avg(r.huesped_id)
from habitaciones ha, reservas r
where ha.habitacion_numero = r.habitacion
group by ha.habitacion_numero

--CONSULTA 3

select ha.habitacion_numero, hu.nombre, hu.apellido
from habitaciones ha, huespedes hu, reservas r
where ha.habitacion_numero = r.habitacion
and hu.idd = r.huesped_id

select hu.nombre, hu.apellido
from huespedes hu
where hu.idd in(
	select huesped_id
	from reservas
	where habitacion =4
)

select ha.habitacion_numero, sum(ha.precio_por_noche)
from reservas r, habitaciones ha
where ha.habitacion_numero = r.habitacion
group by ha.habitacion_numero

