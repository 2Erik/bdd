CREATE TABLE profesores (
    codigo INT,
    nombre VARCHAR(50) NOT NULL,
    CONSTRAINT pk_profesores PRIMARY KEY (codigo)
);

ALTER TABLE estudiantes ADD COLUMN codigo_profesor INT;

ALTER TABLE estudiantes 
ADD CONSTRAINT fk_estudiantes_profesores 
FOREIGN KEY (codigo_profesor) REFERENCES profesores(codigo);

INSERT INTO profesores (codigo, nombre) VALUES 
(1, 'Francisco'),
(2, 'Maria'),
(3, 'Ricardo'),
(4, 'Beatriz'),
(5, 'Jorge'),
(6, 'Elena'),
(7, 'Santiago'),
(8, 'Patricia'),
(9, 'Andres'),
(10, 'Luisa');

INSERT INTO estudiantes (cedula, nombre, apellido, email, fecha_nacimiento, codigo_profesor) VALUES 
('1750000001', 'Juan', 'Mendoza', 'juan@test.com', '2005-03-15', 1),
('1750000002', 'Ana', 'Pantoja', 'ana@test.com', '2004-06-20', 1),
('1750000003', 'Luis', 'Guzman', 'luis@test.com', '2006-01-10', 2),
('1750000004', 'Marta', 'Naranjo', 'marta@test.com', '2005-11-22', 3),
('1750000005', 'Pedro', 'Altamirano', 'pedro@test.com', '2004-09-30', 4),
('1750000006', 'Sofia', 'Lopez', 'sofia@test.com', '2005-05-12', 5),
('1750000007', 'Carlos', 'Perez', 'carlos@test.com', '2006-07-18', 6),
('1750000008', 'Lucia', 'Velez', 'lucia@test.com', '2005-12-01', 7),
('1750000009', 'Diego', 'Torres', 'diego@test.com', '2004-02-28', 8),
('1750000010', 'Elena', 'Ramirez', 'elena@test.com', '2005-08-14', 9);