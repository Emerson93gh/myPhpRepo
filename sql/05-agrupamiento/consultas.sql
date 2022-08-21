/* Consultas de agrupamiento */
SELECT titulo FROM entradas GROUP BY categoria_id;

/* mostrar una columna con el numero de entradas por cada categoria (agrupamiento) */
SELECT COUNT(titulo) AS 'NUMERO ENTRADAS', categoria_id FROM entradas GROUP BY categoria_id;

/* Consulta de agrupamiento con condicion */
SELECT COUNT(titulo) AS 'NUMERO ENTRADAS', categoria_id FROM entradas GROUP BY categoria_id HAVING COUNT(titulo)>= 2;

/* FUNCIONES DE AGRUPAMIENTO
AVG     Sacar la media
COUNT   Contar el numero de elementos
MAX     Valor maximo del grupo
MIN     Valor minimo del grupo
SUM     Sumar todo el contenido del grupo
*/

SELECT AVG(id) AS 'Media de entradas' FROM entradas;
SELECT MAX(id) AS 'Maximo id', titulo FROM entradas;
SELECT MIN(id) AS 'Minimo id', titulo FROM entradas;
SELECT SUM(id) AS 'Suma de id', titulo FROM entradas;