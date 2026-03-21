select m.nombre, p.nombre
from municipio m, proyecto p, proyecto_municipio pm
where m. idd = pm.municipio_id
and p.idd = pm.proyecto_id

select nombre
from proyecto
where idd in (
	select proyecto_id
	from proyecto_municipio
	where municipio_id = 1
)

select m.nombre, count(pm.proyecto_id)
from municipio m, proyecto_municipio pm, proyecto p
where m.idd = pm.municipio_id
group by m.nombre