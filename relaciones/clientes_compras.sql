CREATE TABLE clientes (
    cedula CHAR(10),
    nombre VARCHAR(50) NOT NULL,
    apellido VARCHAR(50) NOT NULL,
    CONSTRAINT pk_clientes PRIMARY KEY (cedula)
);

CREATE TABLE compras (
    id_compra INT,
    cedula CHAR(10) NOT NULL,
    fecha_compra DATE NOT NULL,
    monto DECIMAL(10,2) NOT NULL,
    CONSTRAINT pk_compras PRIMARY KEY (id_compra),
    CONSTRAINT fk_clientes_compras FOREIGN KEY (cedula) REFERENCES clientes(cedula)
);

INSERT INTO clientes (cedula, nombre, apellido) VALUES 
('1712345670', 'Monica', 'Guzman'),
('0709876543', 'Ricardo', 'Lasso'),
('1234567890', 'Esteban', 'Quito'),
('1715554444', 'Lorena', 'Perez'),
('0997771234', 'Xavier', 'Mendoza'),
('1104563218', 'Luis', 'Paez'),
('0801234569', 'Ana', 'Soto'),
('1723456781', 'Marta', 'Velez'),
('0506667770', 'Patricio', 'Real'),
('1801234567', 'Monica', 'Salazar');

INSERT INTO compras (id_compra, cedula, fecha_compra, monto) VALUES 
(1, '1712345670', '2022-09-15', 150.00),
(2, '0709876543', '2022-10-20', 450.75),
(3, '1234567890', '2022-12-05', 890.30),
(4, '1715554444', '2023-01-10', 310.20),
(5, '0997771234', '2023-03-25', 560.00),
(6, '1104563218', '2023-05-12', 145.90),
(7, '0801234569', '2023-06-30', 720.40),
(8, '1723456781', '2023-08-04', 930.00),
(9, '0506667770', '2023-09-10', 275.50),
(10, '1801234567', '2023-09-20', 680.15);