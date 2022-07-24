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

/* Funciones con fecha */
SELECT email, fecha FROM usuarios;
/* Mostrar fecha actual en una columna */
SELECT email, fecha, CURDATE() AS 'Fecha actual' FROM usuarios;
/* Mostra la diferencia entre dos fechas */
SELECT email, DATEDIFF(fecha, CURDATE()) AS 'Fecha actual' FROM usuarios;
/* Mostrar el nombre del dia de una fecha */
SELECT email, DAYNAME(fecha) AS 'Fecha actual' FROM usuarios;
/* Mostrar el dia del mes en una fecha */
SELECT email, DAYOFMONTH(fecha) AS 'Fecha actual' FROM usuarios;
/* Mostrar el dia de la semana en una fecha */
SELECT email, DAYOFWEEK(fecha) AS 'Fecha actual' FROM usuarios;
/* Mostrar el dia del anho en una fecha */
SELECT email, DAYOFYEAR(fecha) AS 'Fecha actual' FROM usuarios;
/* Mostrar el mes de una fecha */
SELECT email, MONTH(fecha) AS 'Fecha actual' FROM usuarios;
/* Mostrar el anho de una fecha */
SELECT email, YEAR(fecha) AS 'Fecha actual' FROM usuarios;
/* Mostrar el dia de una fecha */
SELECT email, DAY(fecha) AS 'Fecha actual' FROM usuarios;
/* Mostrar la hora de una fecha - si la hay */
SELECT email, HOUR(fecha) AS 'Fecha actual' FROM usuarios;
/* Mostrar los minutos de una fecha - si los hay */
SELECT email, MINUTE(fecha) AS 'Fecha actual' FROM usuarios;
/* Mostrar los segundos de una fecha - si los hay */
SELECT email, SECOND(fecha) AS 'Fecha actual' FROM usuarios;
/* Mosrar la hora actual en una columna */
SELECT email, CURTIME() AS 'Hora actual' FROM usuarios;
/* Mostra la fecha y hora del sistema en una columna */
SELECT email, SYSDATE() AS 'Fecha y hora actual' FROM usuarios;
/* Mostrar fecha con formato d-m-Y - y no el americano default */
SELECT email, DATE_FORMAT(fecha, '%d-%m-%Y') AS 'Fecha con formato' FROM usuarios;

/* Funciones generales */
/* Verificar si una columna permite/tiene datos nulos - retorna 0 y 1 */
SELECT email, ISNULL(apellidos) FROM usuarios;
/* Verificar si son diferentes dos cadenas de texto - 0 si son iguales y 1 si son diferentes*/
SELECT email, STRCMP('HOLA', 'HOLA') FROM usuarios;
/* Verificar la version de mySQL en un sentencia */
SELECT VERSION() FROM usuarios;
/* Verificar el usuario utilizado en mySQL */
SELECT USER() FROM usuarios;
/* Mostrar el valor distinto de un grupo con el mismo registro */
SELECT DISTINCT USER() FROM usuarios;
SELECT DISTINCT DATABASE() FROM usuarios;
/* Verificar si existe un campo vacio y si lo hay agregar el texto CAMPO VACIO */
SELECT IFNULL(apellidos, 'CAMPO VACIO') FROM usuarios;

/* Mostrar resultados ordenados por id - default es ascendente */
SELECT * FROM usuarios ORDER BY id;
/* Mostrar resultados ordenados por id ascendente */
SELECT * FROM usuarios ORDER BY id ASC;
/* Mostrar resultados ordenados por id descendente */
SELECT * FROM usuarios ORDER BY id DESC;

/* Mostrar solo 2 registros */
SELECT * FROM usuarios LIMIT 2;
/* Mostrar despues del registro 2 al 4 */
SELECT * FROM usuarios LIMIT 2, 4;