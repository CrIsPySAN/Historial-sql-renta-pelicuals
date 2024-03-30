CREATE TABLE tabla_clientes(
id_cliente SERIAL PRIMARY KEY NOT NULL,
nombre VARCHAR(255) NOT NULL,
apellido VARCHAR(255) NOT NULL,
correo_electronico VARCHAR(255) NOT NULL,
numero_celular VARCHAR(15)
)

CREATE TABLE tabla_peliculas(
id_pelicula SERIAL PRIMARY KEY NOT NULL,
nombre_pelicula VARCHAR(255) NOT NULL,
genero VARCHAR(255) NOT NULL,
autor VARCHAR(255) NOT NULL,
numero_copias INT NOT NULL,
numero_disponible INT NOT NULL,
numero_no_disponible INT NOT NULL
)

CREATE TABLE tabla_fecha_renta(
id_fecha SERIAL PRIMARY KEY NOT NULL,
fecha_salida DATE NOT NULL,
fecha_entrega DATE NOT NULL
)

CREATE TABLE detalle_renta(
id_renta SERIAL PRIMARY KEY,
id_cliente INTEGER REFERENCES tabla_clientes(id_cliente),
id_pelicula INTEGER REFERENCES tabla_peliculas(id_pelicula),
id_fecha INTEGER REFERENCES tabla_fecha_renta(id_fecha)
)

INSERT INTO tabla_clientes(nombre,apellido,correo_electronico,numero_celular)
VALUES ('Felipe', 'Gomez', 'felipe@gmail.com', '+5215512345678'),
('María', 'Gómez', 'maria@gmail.com', '5215587654321'),
('Juan', 'Martínez', 'juan@gmail.com', '5215598765432'),
('Ana', 'López', 'ana@gmail.com', '5215576543210'),
('Pedro', 'Rodríguez', 'pedro@gmail.com', '5215543210987'),
('Laura', 'Sánchez', 'laura@gmail.com', '5215512345678'),
('Carlos', 'Pérez', 'carlos@gmail.com', '5215587654321'),
('Pedro', 'Hernandez', 'pedroh@gmail.com', '5215598765432'),
('Diego', 'Roman', 'diego@gmail.com', '5215576543210'),
('Mario', 'Lopez', 'mario@gmail.com', '5215543210987'),
('Alejandra', 'Diaz', 'alejandra@gmail.com', '5215512345678');

SELECT * FROM tabla_clientes ORDER BY tabla_clientes ASC;

DELETE FROM tabla_clientes;

INSERT INTO tabla_peliculas(nombre_pelicula,genero,autor,numero_copias,numero_disponible,numero_no_disponible)
VALUES ('El Padrino', 'Drama', 'Sofía García', 8, 3, 5),
('Titanic', 'Romance', 'Mateo Rodríguez', 10, 2, 8),
('The Dark Knight', 'Acción', 'Valentina López', 7, 4, 3),
('Forrest Gump', 'Drama', 'Alejandro Martínez', 9, 6, 3),
('Jurassic Park', 'Aventura', 'Isabella Pérez', 5, 2, 3),
('Inception', 'Ciencia ficción', 'Santiago Hernández', 6, 1, 5),
('Pulp Fiction', 'Drama', 'Camila Díaz', 7, 2, 5),
('Matrix', 'Ciencia ficción', 'Daniel Sánchez', 8, 4, 4),
('Avatar', 'Ciencia ficción', 'Gabriela Ramírez', 10, 6, 4),
('La Fiesta De Salchichas', 'Comedia', 'Nicolás Torres', 8, 5, 3),
('La llorona', 'Terror', 'Ana Vásquez', 10, 6, 4),
('Inside out', 'Fantasia', 'Lucas Gómez', 9, 3, 6),
('La La Land', 'Romance', 'Mariana Castro', 6, 1, 5);

SELECT * FROM tabla_peliculas ORDER BY tabla_peliculas ASC;

DELETE FROM tabla_peliculas;

INSERT INTO tabla_fecha_renta(fecha_salida,fecha_entrega)
VALUES ('2023-10-08', '2023-10-23'),
('2023-11-15', '2023-11-30'),
('2023-12-05', '2023-12-20'),
('2024-01-10', '2024-01-25'),
('2024-02-20', '2024-03-06'),
('2024-03-15', '2024-03-30'),
('2024-04-10', '2024-04-25'),
('2024-05-15', '2024-05-30'),
('2024-06-10', '2024-06-25'),
('2024-07-15', '2024-07-30');

SELECT * FROM tabla_fecha_renta ORDER BY tabla_fecha_renta ASC;

DELETE FROM tabla_fecha_renta;

INSERT INTO detalle_renta(id_cliente,id_pelicula,id_fecha)
VALUES (1,5,1),
(2,9,2),
(3,7,3),
(4,2,4),
(5,10,5),
(6,3,6),
(7,6,7),
(8,1,8),
(9,11,9),
(10,4,10);


SELECT * FROM detalle_renta ORDER BY detalle_renta ASC;

DELETE FROM detalle_renta;

ALTER TABLE tabla_fecha_renta ADD COLUMN fecha_limite DATE;

UPDATE detalle_renta SET id_renta = 10 WHERE id_cliente = 10;