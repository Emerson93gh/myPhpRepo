/*
Crear una base de datos para un concesionario
*/
CREATE DATABASE IF NOT EXISTS concesionario;
USE concesionario;

/* tabla coches */
CREATE TABLE coches (
    id INT(10) AUTO_INCREMENT NOT NULL,
    modelo VARCHAR(100) NOT NULL,
    marca VARCHAR(50),
    precio INT(20) NOT NULL,
    stock INT(255) NOT NULL,
    CONSTRAINT pk_coches PRIMARY KEY(id)
)ENGINE=InnoDB;

/* tabla grupos */
CREATE TABLE grupos (
    id INT(10) AUTO_INCREMENT NOT NULL,
    nombre VARCHAR(100) NOT NULL,
    ciudad VARCHAR(100),
    CONSTRAINT pk_grupos PRIMARY KEY(id)
)ENGINE=InnoDB;

/* tabla vendedores */
CREATE TABLE vendedores (
    id INT(10) AUTO_INCREMENT NOT NULL,
    grupo_id INT(10) NOT NULL,
    jefe INT(10),
    nombres VARCHAR(100) NOT NULL,
    apellidos VARCHAR(150) NOT NULL,
    cargo VARCHAR(50),
    fecha_alta DATE,
    sueldo FLOAT(20,2),
    comision FLOAT(10,2),
    CONSTRAINT pk_vendedores PRIMARY KEY(id),
    CONSTRAINT fk_vendedor_grupo FOREIGN KEY(grupo_id) REFERENCES grupos(id),
    CONSTRAINT fk_vendedor_jefe FOREIGN KEY(jefe) REFERENCES vendedores(id)
)ENGINE=InnoDB;

/* tabla clientes */
CREATE TABLE clientes (
    id INT(10) AUTO_INCREMENT NOT NULL,
    vendedor_id INT(10),
    nombre VARCHAR(150) NOT NULL,
    ciudad VARCHAR(100),
    gastado FLOAT(50,2),
    fecha DATE,
    CONSTRAINT pk_clientes PRIMARY KEY(id),
    CONSTRAINT fk_cliente_vendedor FOREIGN KEY(vendedor_id) REFERENCES vendedores(id)
)ENGINE=InnoDB;

/* tabla encargos */
CREATE TABLE encargos (
    id INT(10) AUTO_INCREMENT NOT NULL,
    cliente_id INT(10) NOT NULL,
    coche_id INT(10) NOT NULL,
    cantidad INT(100),
    fecha DATE,
    CONSTRAINT pk_encargos PRIMARY KEY(id),
    CONSTRAINT fk_encargo_cliente FOREIGN KEY(cliente_id) REFERENCES clientes(id),
    CONSTRAINT fk_encargo_coche FOREIGN KEY(coche_id) REFERENCES coches(id)
)ENGINE=InnoDB;

/* Rellenar la bd con informacion */
/* Coches */
INSERT INTO coches VALUES (NULL, 'Lancer EVO', 'Mitsubishi', 30000, 22);
INSERT INTO coches VALUES (NULL, 'Elantra', 'Hyundai', 8000, 9);
INSERT INTO coches VALUES (NULL, 'Corolla', 'Toyota', 19000, 17);
INSERT INTO coches VALUES (NULL, 'GTR', 'Nissan', 27000, 12);
INSERT INTO coches VALUES (NULL, 'Accent', 'Hyundai', 6000, 6);
INSERT INTO coches VALUES (NULL, 'CLS 2000', 'Mercedez Benz', 35000, 10);

/* Grupos */
INSERT INTO grupos VALUES (NULL, 'Vendedores A', 'Madrid');
INSERT INTO grupos VALUES (NULL, 'Vendedores B', 'Madrid');
INSERT INTO grupos VALUES (NULL, 'D. Mecanicos', 'Madrid');
INSERT INTO grupos VALUES (NULL, 'Vendedores A', 'Valencia');
INSERT INTO grupos VALUES (NULL, 'Vendedores B', 'Valencia');
INSERT INTO grupos VALUES (NULL, 'Vendedores C', 'Valencia');
INSERT INTO grupos VALUES (NULL, 'Vendedores A', 'Bilbao');
INSERT INTO grupos VALUES (NULL, 'Vendedores B', 'Pamplona');
INSERT INTO grupos VALUES (NULL, 'Vendedores C', 'San Salvador');


/* Vendedores */
INSERT INTO vendedores VALUES (NULL, 1, NULL, 'David', 'Lopez', 'Encargado de tienda', CURDATE(), 3000, 4);
INSERT INTO vendedores VALUES (NULL, 1, 1, 'Fran', 'Martinez', 'Ayudante de tienda', CURDATE(), 1300, 2);
INSERT INTO vendedores VALUES (NULL, 2, NULL, 'Nelson', 'Sanchez', 'Encargado de tienda', CURDATE(), 2800, 5);
INSERT INTO vendedores VALUES (NULL, 2, 3, 'Jesus', 'Lopez', 'Ayudante de tienda', CURDATE(), 1000, 6);
INSERT INTO vendedores VALUES (NULL, 3, NULL, 'Victor', 'Lopez', 'Mecanico', CURDATE(), 1200, 6);
INSERT INTO vendedores VALUES (NULL, 4, NULL, 'Antonio', 'Lopez', 'Vendedor de repuestos', CURDATE(), 500, 2);
INSERT INTO vendedores VALUES (NULL, 5, NULL, 'Salvador', 'Lopez', 'Vendedor', CURDATE(), 400, 2);
INSERT INTO vendedores VALUES (NULL, 6, NULL, 'Joaquin', 'Lopez', 'Vendedor', CURDATE(), 400, 2);
INSERT INTO vendedores VALUES (NULL, 6, 8, 'Luis', 'Lopez', 'Ayudante', CURDATE(), 300, 1);

/* Clientes */

/* Encargos */
