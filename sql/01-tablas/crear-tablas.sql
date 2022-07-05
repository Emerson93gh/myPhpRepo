/*
int (n caracteres) ENTERO
integer (n caracteres) ENTERO
varchar (n caracteres) STRING/ALFANUMERICO (max 255)
char (n caracteres) STRING/ALFANUMERICO
float (n cifras, n decimales) DECIMAL/COMA FLOTANTE
date 
text 65535 caracteres
mediumtext 16 millones de caracteres
longtext 4 billones de caracteres
mediumint
bigint
*/

/* 
CREAR TABLA
*/
CREATE TABLE usuarios(
    id int(11),
    nombre varchar(100),
    apellidos varchar(255),
    email varchar(100),
    password varchar(255)
);

/* Con restricciones basicas */
CREATE TABLE usuarios(
    id int(11) auto_increment not null,
    nombre varchar(100) not null,
    apellidos varchar(255) not null,
    email varchar(100) default '@empresaxyz.com',
    password varchar(255),
    CONSTRAINT pk_usuarios PRIMARY KEY(id)
);