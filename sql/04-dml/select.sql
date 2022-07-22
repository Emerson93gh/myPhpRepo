/* Select */
SELECT email, nombre, apellidos FROM usuarios;

/* Select para mostrar todos los registros */
SELECT * FROM usuarios;

/* Operadores aritmeticos */
SELECT email, (7+7) AS 'OPERACION' FROM usuarios;
/* Ordenar por id, por defecto es ascendente de menor a mayor */
SELECT id, email, (7+7) AS 'OPERACION' FROM usuarios ORDER BY id;
/* Ordenar por id, descendente */
SELECT id, email, (7+7) AS 'OPERACION' FROM usuarios ORDER BY id DESC;
/* peraciones utilizando las respectivas columnas utilizadas */
SELECT id, email, (id+7) AS 'OPERACION' FROM usuarios;

/* Funciones matematicas */
/* Valor absoluto */
SELECT ABS(7) AS 'OPERACION' FROM usuarios;
/* Aproximacion al mayor */
SELECT CEIL(7.35) AS 'OPERACION' FROM usuarios;
/* Aproximacion al menor */
SELECT FLOOR(7.35) AS 'OPERACION' FROM usuarios;

/* Funciones de texto */
/* Para mostrar en mayusculas */
SELECT UPPER(nombre) FROM usuarios;
/* Para mostrar en minusculas */
SELECT LOWER(nombre) FROM usuarios;
/* Para concatenar */
SELECT CONCAT(nombre, ' ', apellidos) FROM usuarios;
/* CON ETIQUETA O CABECERA */
SELECT CONCAT(nombre, ' ', apellidos) AS 'CONVERSION' FROM usuarios;
/* FUNCION DENTRO DE OTRA FUNCION */
SELECT UPPER(CONCAT(nombre, ' ', apellidos)) AS 'CONVERSION' FROM usuarios;
/* Funcion para contar la cantidad de caracteres */
SELECT LENGTH(CONCAT(nombre, ' ', apellidos)) AS 'CONVERSION' FROM usuarios;
/* Funcion para retirar los espacios innecesarios antes y despues */
SELECT TRIM(CONCAT('     ', nombre, ' ', apellidos, '     ')) AS 'CONVERSION' FROM usuarios;