SELECT t.numero_cuenta, t.monto, t.tipo, t.fecha, t.hora,
b.codigo_banco, t.codigo, b.detalle
FROM banco b, transacciones t
WHERE b.codigo_banco = t.codigo
AND t.tipo = 'C'
AND t.numero_cuenta BETWEEN '22001' AND '22004'

SELECT t.*
FROM banco b, transacciones t
WHERE b.codigo_banco = t.codigo
AND b.codigo_banco = 1