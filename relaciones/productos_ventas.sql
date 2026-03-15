CREATE TABLE ventas (
    id_venta INT,
    codigo_producto INT NOT NULL,
    fecha_venta DATE NOT NULL,
    cantidad INT,
    CONSTRAINT pk_ventas PRIMARY KEY (id_venta),
    CONSTRAINT fk_productos_ventas FOREIGN KEY (codigo_producto) REFERENCES productos(codigo)
);

INSERT INTO productos (codigo, nombre, descripcion, prescio, stock) VALUES 
(1, 'Martillo', 'Herramienta de acero', 15.50, 100),
(2, 'Monitor', 'Pantalla 24 pulgadas', 180.00, 50),
(3, 'Mouse', 'Inalámbrico ergonómico', 25.00, 80),
(4, 'Teclado', NULL, 30.00, 60),
(5, 'Cámara', 'Resolución 4K', 120.00, 20),
(6, 'Cable HDMI', 'Longitud 2 metros', 10.00, 200),
(7, 'Impresora', 'Inyección de tinta', 90.00, 15),
(8, 'Escáner', 'Alta resolución', 110.00, 10),
(9, 'Audífonos', 'Cancelación de ruido', 55.00, 40),
(10, 'Micrófono', 'Conexión USB', 75.00, 25);

INSERT INTO ventas (id_venta, codigo_producto, fecha_venta, cantidad) VALUES 
(1, 1, '2023-01-10', 5),
(2, 2, '2023-02-15', 2),
(3, 3, '2023-03-20', 10),
(4, 4, '2023-04-05', 1),
(5, 5, '2023-05-12', 3),
(6, 6, '2023-06-18', 20),
(7, 7, '2023-07-22', 4),
(8, 8, '2023-08-30', 1),
(9, 9, '2023-09-05', 8),
(10, 10, '2023-09-15', 2);