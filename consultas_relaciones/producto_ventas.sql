SELECT p.nombre, p.stock, v.cantidad
FROM productos p, ventas v
WHERE p.codigo = v.codigo_producto
AND p.nombre LIKE '%m%' 
AND p.descripcion = null

SELECT p.nombre, p.stock, v.cantidad
FROM productos p, ventas v
WHERE p.codigo = v.codigo_producto
AND v.codigo_producto = 5