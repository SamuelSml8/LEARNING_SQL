SHOW DATABASES

-- CREATING TABLES
CREATE TABLE empresas (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(45),
    nit VARCHAR(45),
    telefono VARCHAR(20),
    direccion VARCHAR(45)
);

CREATE TABLE vehiculos (
    id INT PRIMARY KEY AUTO_INCREMENT,
    placa VARCHAR(45),
    modelo VARCHAR(45),
    marca VARCHAR(45),
    color VARCHAR(45),
    tipo_vehiculo VARCHAR(45)
);

CREATE TABLE paises (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(45)
);

CREATE TABLE ciudad (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(45)
);

CREATE TABLE usuarios (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombres VARCHAR(45),
    apellidos VARCHAR(45),
    correo VARCHAR(45),
    password VARCHAR(45),
    edad VARCHAR(45),
    genero VARCHAR(45),
    altura VARCHAR(45),
    peso VARCHAR(45)
);

-- ADDING VALUES TO THE TABLES
INSERT INTO empresas (nombre, nit, telefono, direccion)VALUES(
    "Mundolux", "26801603-8", "2306080", "Cll 23 #2 San Joaquín"
)

INSERT INTO vehiculos (placa, modelo, marca, color, tipo_vehiculo)VALUES("BFU555", "Alaskan", "Toyota", "blanco", "4X4" )

INSERT INTO paises (nombre)VALUES("Colombia")

INSERT INTO ciudad (nombre)VALUES("Medellín")

INSERT INTO usuarios (nombres, apellidos, correo, password, edad, genero, altura, peso)VALUES("Samuel", "Vera Miranda", "samuel@riwi.co","1234","19","Masculino","1.66", "69")

-- SELECTING ALL TABLES INFORMATION
SELECT * FROM empresas

SELECT * FROM vehiculos

SELECT * FROM paises

SELECT * FROM ciudad

SELECT * FROM usuarios