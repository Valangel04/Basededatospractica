CREATE TABLE CATEGORIA_TIPO (
    id_tipo_categoria INT PRIMARY KEY,
    tipodecategorianombre VARCHAR(50)
);
 
 
CREATE TABLE CATEGORIA (
    id_categoria INT PRIMARY KEY,
    nombre_categoria VARCHAR(50),
    id_tipo_categoria INT,
    FOREIGN KEY (id_tipo_categoria) REFERENCES CATEGORIA_TIPO(id_tipo_categoria)
);
 
CREATE TABLE MATERIA_PRIMA (
    id_materiaprima INT PRIMARY KEY,
    materiaprima_nombre VARCHAR(50)
);
 
CREATE TABLE MATERIA_PRIMA_CERVEZA (
    id_materia_prima INT,
    id_cerveza INT,
    FOREIGN KEY (id_materia_prima) REFERENCES MATERIA_PRIMA(id_materiaprima),
    FOREIGN KEY (id_cerveza) REFERENCES CERVEZAS(id_cervezas)
);
 
CREATE TABLE CERVEZAS (
    id_cervezas INT PRIMARY KEY,
    nombre_cerveza VARCHAR(50),
    id_categoria INT,
    FOREIGN KEY (id_categoria) REFERENCES CATEGORIA(id_categoria)
);
 



