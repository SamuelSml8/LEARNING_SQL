-- Exercise - REVIEW 1:
-- Como cliente tengo la necesidad de crear una base de datos que me permita almacenar la información de los estudiantes, materias y notas obtenidas por los estudiantes sobre las materias.
-- Se deben insertar en la base de datos 10 estudiantes
-- Se deben registrar 10 materias
-- Cada estudiante deberá tener como mínimo 3 materias asociadas.

--------------------------------------------------------------------------*
-- *STUDENTS
-- CREATING A TABLE NAMED: "STUDENTS"
CREATE TABLE students (
    id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    genre VARCHAR(15) NOT NULL,
    birth_date DATE NOT NULL
);

-- DELETE TABLE STUDENTS!
-- DROP TABLE students;

-- REGISTERING 10 STUDENTS IN STUDENTS
INSERT INTO students (name, last_name, genre, birth_date)VALUES
    ("Samuel", "Vera Miranda", "M", "2005-03-06"),
    ("Alex", "Gargolas", "M", "2005-07-23"),
    ("John", "Noreña", "M", "2006-04-10"),
    ("Camilo", "Atehortua", "M", "1996-08-15"),
    ("Tomas", "Upegui", "M", "2006-01-01"),
    ("Deiby", "Nomeacuerdo", "M", "2005-04-11"),
    ("Lupe", "Perez", "F", "2000-05-08"),
    ("Estiven", "Arias", "M", "1999-12-24"),
    ("Julián", "Agudelo", "M", "1954-12-31"),
    ("Manuela", "Agudelo", "F", "1984-11-08")

-- SELECTING ALL OF STUDENTS TABLE
SELECT * FROM students
--------------------------------------------------------------------------
--------------------------------------------------------------------------*
--* SUBJECTS
-- CREATING A TABLE NAMED: "SUBJECTS"
CREATE TABLE subjects (
    id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    name VARCHAR(50) NOT NULL
)

-- DELETE TABLE SUBJECTS
-- DROP TABLE subjects

-- REGISTERING 10 SUBJECTS
INSERT INTO subjects (name)VALUES
    ("Python"),
    ("Ingeniería de requerimientos"),
    ("JavaScript"),
    ("NodeJS"),
    ("Express"),
    ("Fastify"),
    ("SCRUM"),
    ("Git y GitHub"),
    ("Bases de Datos SQL"),
    ("Bases de Datos No SQL")

-- SELECTING ALL FROM SUBJECTS TABLE
SELECT * FROM subjects
--------------------------------------------------------------------------
--------------------------------------------------------------------------*
-- GRADES*
-- TABLE GRADES
CREATE TABLE grades (
    id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    student_id INT NOT NULL,
    subject_id INT NOT NULL,
    FOREIGN KEY (student_id) REFERENCES students(id),
    FOREIGN KEY (subject_id) REFERENCES subjects(id),
    grade DECIMAL(5,2) NOT NULL
    );

-- DELETE TABLE GRADES
-- DROP TABLE grades;

-- REGISTERING GRADES AND SUBJECTS TO STUDENTS
INSERT INTO grades (student_id, subject_id, grade)VALUES
    (1, 1, 5.0),
    (1, 2, 4.5),
    (1, 3, 4.9),
    (2, 4, 4.7),
    (2, 5, 4.3),
    (2, 6, 4.2),
    (3, 7, 4.4),
    (3, 8, 4.8),
    (3, 9, 4.9),
    (4, 10, 5.0),
    (4, 1, 4.2),
    (4, 2, 4.0),
    (5, 3, 5.0),
    (5, 4, 4.2),
    (5, 5, 4.6),
    (6, 6, 3.7),
    (6, 7, 4.7),
    (6, 8, 4.3),
    (7, 9, 3.9),
    (7, 10, 4.7),
    (7, 1, 5.0),
    (8, 2, 4.3),
    (8, 3, 4.7),
    (8, 4, 4.2),
    (9, 5, 5.0),
    (9, 6, 4.9),
    (9, 7, 4.5),
    (10, 8, 4.9),
    (10, 9, 4.6),
    (10, 10, 4.3)


-- SELECTING ALL FROM GRADES TABLE
SELECT * FROM grades
--------------------------------------------------------------------------