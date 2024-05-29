CREATE DATABASE IF NOT EXISTS institucion;
 
USE institucion;
 
CREATE TABLE IF NOT EXISTS curso(
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100),
    descripcion TEXT
);
 
CREATE TABLE IF NOT EXISTS alumnos(
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100),
    correo VARCHAR(100),
    id_curso INT,
    FOREIGN KEY (id_curso) REFERENCES curso(id)
);
 
CREATE TABLE IF NOT EXISTS perfil(
    id INT AUTO_INCREMENT PRIMARY KEY,
    biografia VARCHAR(100),
    id_alumno INT,
    FOREIGN KEY (id_alumno) REFERENCES alumnos(id)
);
 
CREATE TABLE IF NOT EXISTS profesor(
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100),
    departamento VARCHAR(100)
);
 
CREATE TABLE IF NOT EXISTS curso_asignado(
    id_curso INT,
    id_profesor INT,
    PRIMARY KEY (id_curso, id_profesor),
    FOREIGN KEY (id_curso) REFERENCES curso(id),
    FOREIGN KEY (id_profesor) REFERENCES profesor(id)
);
