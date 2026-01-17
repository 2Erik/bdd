--PRODUCTOS
SELECT * FROM productos
WHERE stock=10 and prescio<money(10)

SELECT * FROM productos
WHERE nombre LIKE '%m%' OR descripcion LIKE '% %'

SELECT * FROM productos
WHERE descripcion IS NULL OR stock = 0

--CUENTAS
SELECT numero_cuenta, saldo FROM cuentas
WHERE saldo>money(100) and saldo<money(1000)

SELECT * FROM cuentas
WHERE fecha_creacion BETWEEN '16/01/2025' AND  '16/01/2026'

SELECT * FROM cuentas
WHERE saldo=money(0) OR cedula_propietario LIKE '%2' 

--ESTUDIANTES
SELECT nombre, apellido
FROM estudiantes
WHERE nombre LIKE 'M%' OR apellido LIKE '%Z';

SELECT nombre FROM estudiantes
WHERE cedula LIKE '18%32%';

SELECT nombre, apellido FROM estudiantes
WHERE cedula LIKE '%06' OR cedula LIKE '17%';

--REGISTRO_ENTRADA
SELECT * FROM registros_entradas
WHERE MONTH(fecha) = 9 OR cedula LIKE '17%';

SELECT * FROM registros_entradas
WHERE MONTH(fecha) = 8 AND cedula LIKE '17%' AND hora BETWEEN '08:00' AND '12:00';

SELECT * FROM registros_entradas
WHERE 
(
    MONTH(fecha) = 8 AND cedula LIKE '17%' AND hora BETWEEN '08:00' AND '12:00'
)
OR
(
    MONTH(fecha) = 9 AND cedula LIKE '08%' AND hora BETWEEN '09:00' AND '13:00'
);

--VIDEOJUEGOS
SELECT * FROM videojuegos
WHERE nombre LIKE '%C%' OR valoracion = 7;

SELECT * FROM videojuegos
WHERE codigo BETWEEN 3 AND 7 OR valoracion = 7;

SELECT * FROM videojuegos
WHERE 
(
    categoria = 'Guerra' AND valoracion > 7 AND nombre LIKE 'C%'
)
OR
(
    valoracion > 8 AND nombre LIKE 'D%'
);

--TRANSACCIONES
SELECT * FROM transacciones
WHERE tipo = 'C' AND numero_cuenta BETWEEN 22001 AND 22004;

SELECT * FROM transacciones
WHERE tipo = 'D' AND DAY(fecha) = 25 AND MONTH(fecha) = 5 AND numero_cuenta BETWEEN 22007 AND 22010;

SELECT * FROM transacciones
WHERE codigo BETWEEN 1 AND 5 AND (numero_cuenta = 22002 OR numero_cuenta = 22004) AND MONTH(fecha) = 5 AND (DAY(fecha) = 26 OR DAY(fecha) = 29);
