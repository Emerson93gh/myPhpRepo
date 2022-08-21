/* SUBCONSULTAS */
/* Mostrar usuarios que esten en el registro de las entradas */
SELECT * FROM usuarios WHERE id IN (SELECT usuario_id FROM entradas);

/* Mostrar usuarios que NO esten en el registro de las entradas */
SELECT * FROM usuarios WHERE id NOT IN (SELECT usuario_id FROM entradas);

/* Mostrar usuarios que tengan entradas en su titulo sobre GTA */
SELECT nombre, apellidos FROM usuarios WHERE id 
    IN (SELECT usuario_id FROM entradas WHERE titulo LIKE "%GTA%");

/* Mostrar todas las entradas de la categoria accion utilizando su nombre */
SELECT titulo FROM entradas WHERE categoria_id
    IN (SELECT id FROM categorias WHERE nombre = 'Accion');

/* Mostrar las categorias con mas de tres entradas */
SELECT nombre FROM categorias WHERE id
    IN (SELECT categoria_id FROM entradas GROUP BY categoria_id HAVING COUNT(categoria_id)>=3);

/* Mostrar los usuarios que crearon una entrada un domingo (dia 1 de la semana) */
SELECT * FROM usuarios WHERE id
    IN (SELECT usuario_id FROM entradas WHERE DAYOFWEEK(fecha)=1);

/* Mostrar el nombre del usuario que tenga mas entradas */
SELECT nombre FROM usuarios WHERE id
    = (SELECT usuario_id FROM entradas GROUP BY usuario_id ORDER BY COUNT(id) DESC LIMIT 1);

/* Mostrar las categorias sin entrada */
SELECT nombre FROM categorias WHERE id
    NOT IN (SELECT categoria_id FROM entradas);