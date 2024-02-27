-- Excercise number: 1
SELECT nombres, apellidos, edad FROM users
WHERE edad = 20

-- Excercise number: 2
SELECT * FROM users
WHERE genero = "M" AND edad > 20 AND edad <30

-- Excercise number: 3
SELECT * FROM users
ORDER BY  edad ASC
LIMIT 1

-- Excercise number: 4
SELECT id as REGISTERS FROM users
ORDER BY id DESC
LIMIT 1

-- Excercise number: 5
SELECT * FROM users
LIMIT 5

-- Excercise number: 6
SELECT * FROM users
ORDER BY id DESC
LIMIT 10

-- Excercise number: 7
SELECT * FROM users
WHERE correo LIKE "%.net"

-- Excercise number: 8
SELECT * FROM users
WHERE pais != "colombia"

-- Excercise number: 9
SELECT * FROM users
WHERE pais != "ecuador" AND pais != "panama"

-- Excercise number: 10
SELECT COUNT(*) AS Colombianos_Rockeros FROM users
WHERE pais = "colombia" AND musica = "rock"

-- Excercise number: 11
UPDATE users
SET musica = "carranga"
WHERE musica = "metal";
SELECT * FROM users
WHERE musica = "carranga"

-- Excercise number: 12
SELECT * FROM users
WHERE musica = "carranga" and pais = "colombia" and edad > 10 and edad <20

-- Excercise number: 13
UPDATE users
SET musica = "carranga"
WHERE edad = 99;
SELECT * FROM users
WHERE edad = 99

-- Excercise number: 14
SELECT * FROM users
WHERE nombres LIKE "A%"

-- Excercise number: 15
SELECT * FROM users
WHERE apellidos LIKE "%z"

-- Excercise number: 16
UPDATE users
SET musica = "NULL"
WHERE edad = 50
SELECT * FROM users
WHERE edad = 50

-- Excercise number: 17
SELECT * FROM users
WHERE musica = "NULL"

-- Excercise number: 18
SELECT sum(edad) AS Suma_Edades FROM users

-- Excercise number: 19
SELECT count(*) as usuarios_Ecuatorianos FROM users
WHERE pais = "ecuador"

-- Excercise number: 20
SELECT * FROM users
WHERE pais = "colombia" AND musica = "vallenato"