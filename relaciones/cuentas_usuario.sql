
CREATE TABLE usuario(
cedula CHAR(5),
nombre VARCHAR(25) NOT NULL,
apellido VARCHAR(25) NOT NULL,
tipo_cuenta VARCHAR(20),
limite_credito DECIMAL(10,5),

CONSTRAINT usuario_pk PRIMARY KEY (cedula)
)

ALTER TABLE cuentas
ADD CONSTRAINT usuario_cuentas_fk
FOREIGN KEY (cedula_propietario)
REFERENCES usuario(cedula)

INSERT INTO usuario (cedula, nombre, apellido, tipo_cuenta, limite_credito) VALUES 
('11111', 'Juan', 'Perez', 'Ahorros', 5000.00),
('22222', 'Maria', 'Lopez', 'Corriente', 3000.00),
('33333', 'Carlos', 'Ruiz', 'Ahorros', 4500.00);

INSERT INTO Cuentas (numero_cuenta, cedula_propietario, fecha_creacion, saldo) VALUES 
('C0001', '11111', '2022-09-05', 120.00),
('C0002', '22222', '2022-10-12', 450.75),
('C0003', '33333', '2022-11-20', 890.30),
('C0004', '11111', '2022-12-01', 310.20),
('C0005', '22222', '2023-02-14', 560.00),
('C0006', '33333', '2023-04-22', 145.90),
('C0007', '11111', '2023-05-30', 720.40),
('C0008', '22222', '2023-07-04', 930.00),
('C0009', '33333', '2023-08-15', 275.50),
('C0010', '11111', '2023-09-10', 680.15);