DELETE FROM productos
WHERE descripcion IS NULL

DELETE FROM cuentas
WHERE cedula_propietario LIKE '10%'

DELETE FROM estudiantes
WHERE cedula LIKE '%05'

DELETE FROM registro_entrada
WHERE MONTH(fecha) = 9

DELETE FROM videojuegos
WHERE valoracion < 7

DELETE FROM transacciones
WHERE hora BETWEEN '14:00' AND '18:00' AND MONTH(fecha) = 9
