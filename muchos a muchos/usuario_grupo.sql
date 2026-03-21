select g.nombre grupo, u.nombre usuario 
from usuarios u, grupo g, usuario_grupo ug
where ug.us_id = u.iid
and ug.gr_id = g.iid

select nombre
from usuarios
where iid in (
    select us_id
    from usuario_grupo
    where gr_id = 1
);

select g.nombre, count(ug.us_id) as cantidad_usuarios
from grupo g
inner join usuario_grupo ug on g.iid = ug.gr_id
group by g.nombre;

--CONSULTA 2

select g.nombre grupo, u.nombre usuario 
from usuarios u, grupo g, usuario_grupo ug
where ug.us_id = u.iid
and ug.gr_id = g.iid
and g.nombre like '%intensivo%'

select u.nombre usuario
from usuarios u
where iid in(
	select us_id
	from usuario_grupo
	where gr_id = 2
)

select g.nombre, max(ug.us_id) id_maximo, min(ug.us_id) id_minimo
from grupo g, usuario_grupo ug
where g.iid = ug.gr_id
group by g.nombre

--CONSULTA 3

select u.nombre, g.fecha_creacion
from usuarios u, grupo g, usuario_grupo ug
where u.iid = ug.us_id
and g.iid = ug.gr_id
and g.fecha_creacion between '2020-03-08' and '2022-03-08'

select u.nombre usuario
from usuarios u
where iid in(
	select us_id
	from usuario_grupo
	where gr_id = 3
)

select g.descripcion, count(ug.us_id)
from grupo g, usuario_grupo ug
where g.iid = ug.gr_id
and g.descripcion like '%matutino%'
group by g.descripcion