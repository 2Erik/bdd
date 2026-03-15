SELECT p.codigo, s.nombre, s.apellido
FROM estudiantes s, profesores p
WHERE s.codigo_profesor = p.codigo
AND s.apellido LIKE '%n%'

SELECT s.*
FROM estudiantes s, profesores p
WHERE s.codigo_profesor = p.codigo
AND p.nombre = 'Francisco'