CREATE TABLE empleado (
    codigo_empleado INT NOT NULL,
    nombre VARCHAR(25) NOT NULL,
    fecha DATE NOT NULL,
    hora TIME NOT NULL,
    CONSTRAINT pk_empleado PRIMARY KEY (codigo_empleado)
);

ALTER TABLE registro_entrada ADD COLUMN codigo_empleado INT;

ALTER TABLE registro_entrada 
ADD CONSTRAINT fk_registro_empleado 
FOREIGN KEY (codigo_empleado) REFERENCES empleado(codigo_empleado);

INSERT INTO empleado (codigo_empleado, nombre, fecha, hora) VALUES 
(2201, 'Marcos Ortega', '2023-01-10', '07:30:00'),
(2202, 'Sara Mendez', '2023-01-12', '08:00:00'),
(2203, 'Jorge Vaca', '2023-01-15', '08:15:00');

INSERT INTO registro_entrada (codigo_registro, cedula_empleado, fecha, hora, codigo_empleado) VALUES 
(1, '1712345678', '2023-08-05', '08:30:00', 2201),
(2, '1712345679', '2023-08-15', '09:15:00', 2202),
(3, '1712345680', '2023-09-01', '10:00:00', 2203),
(4, '1712345678', '2023-09-20', '11:45:00', 2201),
(5, '1712345679', '2023-10-05', '12:30:00', 2202),
(6, '1712345680', '2023-10-25', '08:05:00', 2203),
(7, '1712345678', '2023-11-12', '09:50:00', 2201),
(8, '1712345679', '2023-11-30', '10:20:00', 2202),
(9, '1712345680', '2023-12-15', '11:10:00', 2203),
(10, '1712345678', '2023-12-28', '12:55:00', 2201);