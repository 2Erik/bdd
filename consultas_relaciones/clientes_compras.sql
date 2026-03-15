SELECT cl.nombre, cl.apellido
FROM clientes cl, compras co
WHERE cl.cedula = co.cedula
AND cl.cedula LIKE '%7%'

SELECT cl.nombre, cl.apellido
FROM clientes cl
JOIN compras co ON cl.cedula = co.cedula
WHERE
cl.cedula LIKE '%7%'

SELECT * FROM clientes cl, compras co
WHERE cl.cedula = co.cedula
AND cl.nombre = 'Monica'

SELECT * FROM clientes cl
JOIN compras co ON cl.cedula = co.cedula
WHERE cl.nombre = 'Monica'