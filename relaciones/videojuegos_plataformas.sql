CREATE TABLE plataformas (
    id_plataforma INT,
    nombre_plataforma VARCHAR(50) NOT NULL,
    codigo_videojuego INT,
    CONSTRAINT pk_plataformas PRIMARY KEY (id_plataforma),
    CONSTRAINT fk_videojuegos_plataformas FOREIGN KEY (codigo_videojuego) REFERENCES videojuegos(codigo)
);

INSERT INTO videojuegos (codigo, nombre, descripcion, valoracion) VALUES 
(1, 'God of war', 'Un guerrero espartano enfrenta a los dioses en una guerra épica', 10),
(2, 'Call of Duty', 'Simulador de guerra moderna en primera persona', 9),
(3, 'Gears of War', 'Guerra contra los Locust por la supervivencia', 8),
(4, 'Cyberpunk 2077', 'Futuro distópico en Night City', 7),
(5, 'Dark Souls', 'Desafío extremo en un mundo oscuro', 9),
(6, 'Cuphead', 'Acción clásica de plataformas y disparos', 8),
(7, 'Doom Eternal', 'Combate frenético contra demonios', 10),
(8, 'Civilization VI', 'Estrategia para construir un imperio', 9),
(9, 'Diablo IV', 'Acción RPG en el mundo de Santuario', 9),
(10, 'Castle Crashers', 'Aventura medieval en 2D', 8);

INSERT INTO plataformas (id_plataforma, nombre_plataforma, codigo_videojuego) VALUES 
(1, 'PlayStation 5', 1),
(2, 'PC Master Race', 2),
(3, 'Xbox Series X', 3),
(4, 'PC Master Race', 4),
(5, 'PlayStation 4', 5),
(6, 'Nintendo Switch', 6),
(7, 'Xbox One', 7),
(8, 'PC Master Race', 8),
(9, 'PlayStation 5', 9),
(10, 'Nintendo Switch', 10);