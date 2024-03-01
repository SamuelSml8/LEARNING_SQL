-- HACER 5 EJEMPLOS DE VISTAS (VIEWS)

-- PRIMERA VISTA
CREATE VIEW cincuentonas_en_accion AS
SELECT CONCAT(nombres, " ", apellidos) AS nombre_completo, edad, genero, musica FROM users
WHERE genero = "M"
AND musica = "reggaeton"
AND edad >= 50 AND edad < 60;

SELECT * FROM cincuentonas_en_accion

-- SEGUNDA VISTA
CREATE VIEW señores_carrangueros AS
SELECT CONCAT(nombres, " ", apellidos) AS nombre_completo, edad, genero, musica FROM users
WHERE genero = "H"
AND musica = "carranga"
AND edad >=45

SELECT * FROM señores_carrangueros

-- TERCERA VISTA
CREATE VIEW colombiano_rockeros AS
SELECT CONCAT(nombres, " ", apellidos) AS nombre_completo, edad, genero, pais, musica FROM users
WHERE pais = "colombia"
AND musica = "rock"

SELECT * FROM colombiano_rockeros

-- CUARTA VISTA
CREATE VIEW correos_example AS
SELECT CONCAT(nombres, " ", apellidos) AS nombre_completo, edad, genero, correo FROM users
WHERE correo LIKE "%@example%"

SELECT * FROM correos_example

-- QUINTA VISTA
CREATE VIEW hombres_punkeros_ecuatorianos AS
SELECT CONCAT(nombres, " ", apellidos) AS nombre_completo, edad, pais, musica FROM users
WHERE genero = "H"
AND pais = "ecuador"
AND musica = "punk"


SELECT * FROM hombres_punkeros_ecuatorianos