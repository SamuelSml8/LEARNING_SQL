USE agencia
------------------------------------------------------------------*
-- CREATING TABLES MARCAS
CREATE TABLE marcas(
    id INT PRIMARY KEY AUTO_INCREMENT,
    marca VARCHAR(50) NOT NULL
);

-- CREATING TABLES TIPO_VEHICULO
CREATE TABLE tipo_vehiculo(
    id INT PRIMARY KEY AUTO_INCREMENT,
    tipo_vehiculo VARCHAR(50) NOT NULL,
    marcas_id INT
);

-- CREATING TABLES COLORES
CREATE TABLE colores(
    id INT PRIMARY KEY AUTO_INCREMENT,
    color VARCHAR(50)
);

-- CREATING TABLES VEHICULOS
CREATE TABLE vehiculos (
    id INT PRIMARY KEY AUTO_INCREMENT,
    modelo VARCHAR(50),
    placa VARCHAR(10) UNIQUE,
    colores_id INT,
    tipo_vehiculo_id INT
)
------------------------------------------------------------------*

------------------------------------------------------------------*
-- INSERTING REGISTERS

-- MARCAS REGISTERS
INSERT INTO marcas (marca)VALUES
    ("BMW"),
    ("FORD");

INSERT INTO colores (color)VALUES
    ("Rojo"),
    ("Azul");

-- TIPO_VEHICULO REGISTERS
INSERT INTO tipo_vehiculo (tipo_vehiculo, marcas_id) VALUES
    ("Carro", 1),
    ("Moto", 2);

-- VEHICULOS REGISTERS
INSERT INTO vehiculos (modelo, placa, colores_id, tipo_vehiculo_id)VALUES
    ("2021", "ABC508", 1, 2),
    ("2024", "AKC123", 2, 1),
    ("2022", "ABI342", 1, 2),
    ("2014", "AHC465", 2, 1),
    ("2003", "YBC567", 2, 2),
    ("2013", "MBC506", 1, 2),
    ("2015", "GBC520", 2, 1),
    ("2010", "PJC450", 1, 2),
    ("2021", "THC510", 1, 1),
    ("2022", "FRT550", 2, 1)
------------------------------------------------------------------*

------------------------------------------------------------------*
-- FOREIGN KEYS

-- FOREIGN KEY - TIPO DE VEHICULO
ALTER TABLE tipo_vehiculo ADD FOREIGN KEY (marcas_id) REFERENCES marcas(id);

-- FOREIGN KEY - VEHICULOS
ALTER TABLE vehiculos ADD FOREIGN KEY (colores_id) REFERENCES colores(id);
ALTER TABLE vehiculos ADD FOREIGN KEY (tipo_vehiculo_id) REFERENCES tipo_vehiculo(id);
------------------------------------------------------------------*

------------------------------------------------------------------*
-- GENERAL SELECTORS
SELECT * FROM colores

SELECT * FROM marcas

SELECT * FROM vehiculos
------------------------------------------------------------------*

------------------------------------------------------------------*
-- INNER JOIN
SELECT vehiculos.modelo, vehiculos.placa, marcas.marca, colores.color, tipo_vehiculo.tipo_vehiculo FROM vehiculos
INNER JOIN marcas
INNER JOIN colores
INNER JOIN tipo_vehiculo
WHERE vehiculos.tipo_vehiculo_id = tipo_vehiculo.id
AND tipo_vehiculo.marcas_id = marcas.id
AND vehiculos.colores_id = colores.id
------------------------------------------------------------------*

------------------------------------------------------------------*
-- DROP TABLES!
-- DROP TABLE marcas;
-- DROP TABLE vehiculos;
-- DROP TABLE colores;
-- DROP TABLE tipo_vehiculo;
------------------------------------------------------------------*