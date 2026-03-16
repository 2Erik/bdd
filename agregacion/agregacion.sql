SELECT AVG(CAST (saldo AS NUMERIC)) AS saldo_promedio
FROM cuentas
WHERE cedula_propietario = '1712345678';

SELECT tipo_cuenta, COUNT(*) AS total_cuentas
FROM usuario
GROUP BY tipo_cuenta

--CLIENTES --COMPRAS
SELECT cedula, SUM(monto) AS monto_total_compras
FROM compras
GROUP BY cedula

SELECT fecha_compra, COUNT(*) AS total_compras
FROM compras
WHERE fecha_compra = '2023-09-10'
GROUP BY fecha_compra

--ESTUDIANTES --PROFESORES
SELECT codigo_profesor, COUNT(nombre) AS total_estudiantes
FROM estudiantes
GROUP BY codigo_profesor

--PRODUCTOS --VENTAS
SELECT MAX(prescio) AS precio_naximo
FROM productos

SELECT SUM(cantidad) AS cantidad_total_vendida
FROM ventas;

--TRANSACCION --BANCO
SELECT COUNT(*) AS total_transacciones_credito
FROM transacciones
WHERE tipo = 'C';

SELECT numero_cuenta,
ROUND(AVG(CAST(monto AS decimal)),2) AS monto_promedio
FROM transacciones
GROUP BY numero_cuenta;

--VIDEOJUEGO -PLATAFORMAS
SELECT codigo_videojuego,
COUNT(*) AS total_plataformas
FROM plataformas
GROUP BY codigo_videojuego;

SELECT ROUND(AVG(valoracion),2) AS valoracion_promedio
FROM videojuegos;

