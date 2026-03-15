
--forma de consulata enseñada
SELECT cu.numero_cuenta, us.nombre FROM
cuentas cu, usuario us
WHERE
cu.cedula_propietario = us.cedula
AND cu.saldo BETWEEN MONEY(100) AND MONEY(1000)

--forma de consulta actual aprendida
SELECT cu.numero_cuenta, us.nombre
FROM cuentas cu
JOIN usuario us ON cu.cedula_propietario = us.cedula
WHERE
cu.saldo BETWEEN MONEY(100) AND MONEY(1000)

SELECT cu.numero_cuenta, cu.fecha_creacion,
cu.saldo, us.cedula FROM cuentas cu, usuario us
WHERE
cu.cedula_propietario = us.cedula
AND cu.fecha_creacion BETWEEN '2022-09-21' AND '2023-09-21'

SELECT cu.numero_cuenta, cu.fecha_creacion,
cu.saldo, us.cedula
FROM cuentas cu
JOIN usuario us ON cu.cedula_propietario = us.cedula
WHERE
cu.fecha_creacion BETWEEN '2022-09-21' AND '2023-09-21'