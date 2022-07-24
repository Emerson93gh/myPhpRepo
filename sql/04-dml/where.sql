/* Mostrar cuando la condicion se cumpla */
SELECT * FROM usuarios WHERE email = 'es@gmail.com';
/*
OPERADORES DE COMPARACION
igual               =
distinto            !=
menor               <
mayor               >
Entre               between A and B
En                  in
Es nulo             is null
No nulo             is not null
Como                like
No es como          not like

OPERADORES LOGICOS
O                   OR
Y                   AND
NO                  NOT

COMODINES
Cualquier cantidad de caracteres: %
Un caracter desconocido: _

EJEMPLOS*/

/* 1. Mostrar nombre y apellido de todos los usuarios registrados en 2022 */
SELECT nombre, apellidos FROM usuarios WHERE YEAR(fecha) = '2022';
/* 2. Mostrar nombre y apellido de todos los usuarios que NO se registraron en 2022 */
SELECT nombre, apellidos FROM usuarios WHERE YEAR(fecha) != '2022';
/*  Mostrar nombre y apellido de todos los usuarios que NO se registraron en 2022 o sea nula*/
SELECT nombre, apellidos FROM usuarios WHERE YEAR(fecha) != '2022' OR ISNULL(fecha);
/* Mostrar el email de los usuarios que en el apellido contenga la letra o y que la contrasena sea 1234 */
SELECT email FROM usuarios WHERE apellidos LIKE '%o%' AND password = '1234';
