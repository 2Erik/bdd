CREATE TABLE prestamo (
    cedula CHAR(10),
    monto MONEY,
    fecha_prestamo DATE,
    hora_prestamo TIME,
    garante VARCHAR(40),
    CONSTRAINT pk_prestamo PRIMARY KEY (cedula),
    CONSTRAINT fk_persona_prestamo FOREIGN KEY (cedula) REFERENCES personas(cedula)
);

INSERT INTO personas (cedula, nombre, apellido, estatura, fecha_nacimiento, hora_nacimiento, cantidad_ahorrada, numero_hijos) VALUES 
('1710000001', 'Sean', 'Anderson', 1.75, '1990-05-10', '08:30:00', 500.00, 2),
('1710000002', 'Maria', 'Lopez', 1.60, '1992-08-15', '14:20:00', 1200.00, 1),
('1710000003', 'Carlos', 'Ruiz', 1.82, '1985-11-20', '10:00:00', 300.00, 3);

INSERT INTO prestamo (cedula, monto, fecha_prestamo, hora_prestamo, garante) VALUES 
('1710000001', 500.00, '2023-01-15', '09:00:00', 'Robert Downey'),
('1710000002', 150.75, '2023-02-10', '11:30:00', 'Chris Evans'),
('1710000003', 999.99, '2023-03-05', '15:45:00', 'Scarlett Johansson'),
('1710000004', 250.00, '2023-04-12', '08:20:00', 'Mark Ruffalo'),
('1710000005', 780.50, '2023-05-20', '10:10:00', 'Jeremy Renner'),
('1710000006', 100.00, '2023-06-01', '14:00:00', 'Tom Holland'),
('1710000007', 430.00, '2023-07-18', '16:30:00', 'Elizabeth Olsen'),
('1710000008', 620.00, '2023-08-22', '09:45:00', 'Paul Rudd'),
('1710000009', 850.25, '2023-09-10', '12:00:00', 'Benedict Cumberbatch'),
('1710000010', 315.00, '2023-09-21', '13:15:00', 'Brie Larson');