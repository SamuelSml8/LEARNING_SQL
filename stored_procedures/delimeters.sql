-- 5 EJEMPLOS DE PROCEDIMIENTOS ALMACENADOS

--* PRIMER EJEMPLO
DELIMITER //
CREATE procedure last_letter(in letra CHAR)
BEGIN
    SELECT * FROM users
    WHERE nombres LIKE CONCAT("%", letra);
END //
DELIMITER;

CALL last_letter("Z")

--* SEGUNDO EJEMPLO
DELIMITER //
CREATE PROCEDURE create_user(
    IN nombres VARCHAR(45),
    IN apellidos VARCHAR(45),
    IN correo VARCHAR(40),
    IN edad INT,
    IN genero VARCHAR(2),
    IN pais VARCHAR(40),
    IN musica VARCHAR(40)
)
BEGIN
INSERT INTO users(nombres, apellidos, correo, edad, genero, pais, musica)
    VALUES(nombres, apellidos, correo, edad, genero, pais, musica);
END //
DELIMITER

CALL create_user("Samuel", "Vera Miranda", "samuel@gmail.com", 18, "H", "colombia", "merengue")

SELECT * FROM users
ORDER BY id DESC

--* TERCER EJEMPLO
DELIMITER //
CREATE PROCEDURE edit_name_age(
    IN usuario_id INT,
    IN nuevo_nombre VARCHAR(45),
    IN nueva_edad INT
)
BEGIN
UPDATE users
SET nombres = nuevo_nombre,
    edad = nueva_edad
WHERE id = usuario_id;
END //
DELIMITER;

CALL edit_name_age(2, "Jhon", 20)

SELECT * FROM users

--* CUARTO EJEMPLO
DELIMITER //
CREATE PROCEDURE change_email(
    IN usuario_id INT,
    IN nuevo_correo VARCHAR(150)
)
UPDATE users
SET correo = nuevo_correo
WHERE id = usuario_id;
END //
DELIMITER

CALL change_email(2, "jhon@gmail.com")

SELECT * FROM users
WHERE correo = "jhon@gmail.com"

--* QUINTO EJEMPLO
DELIMITER //
CREATE PROCEDURE search_user(
    IN user_id INT
)
SELECT * FROM users
WHERE id = user_id;
END //
DELIMITER

CALL search_user(2)