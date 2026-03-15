CREATE TABLE banco (
    codigo_banco INT,
    codigo_transaccion INT,
    detalle VARCHAR(100),
    CONSTRAINT pk_banco PRIMARY KEY (codigo_banco),
    CONSTRAINT fk_transacciones_banco FOREIGN KEY (codigo_transaccion) REFERENCES transacciones(codigo)
);

INSERT INTO transacciones (codigo, numero_cuenta, monto, tipo, fecha, hora) VALUES 
(1, '22001', 500.00, 'C', '2023-10-01', '09:00:00'),
(2, '22002', 150.25, 'C', '2023-10-05', '10:30:00'),
(3, '22004', 890.00, 'C', '2023-10-10', '14:20:00'),
(4, '55001', 120.00, 'D', '2023-10-12', '11:00:00'),
(5, '22003', 300.00, 'C', '2023-10-15', '16:45:00'),
(6, '55002', 45.50, 'D', '2023-10-18', '08:15:00'),
(7, '22001', 700.00, 'C', '2023-10-20', '13:00:00'),
(8, '88001', 1000.00, 'D', '2023-10-22', '17:30:00'),
(9, '22004', 210.00, 'C', '2023-10-25', '09:10:00'),
(10, '99001', 50.00, 'D', '2023-10-28', '12:00:00');

INSERT INTO banco (codigo_banco, codigo_transaccion, detalle) VALUES 
(101, 1, 'Depósito en efectivo'),
(102, 2, 'Transferencia recibida'),
(103, 3, 'Depósito cajero automático');