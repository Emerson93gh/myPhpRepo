/*
Consultas multitabla, permiten consultar varias tablas en una misma sentencia.
*/
/* Mostrar en entradas al nombre del autor y categoria */
SELECT e.id, e.titulo, u.nombre AS 'autor', c.nombre AS 'categoria'
    FROM entradas e, usuarios u, categorias c
        WHERE e.usuario_id = u.id AND e.categoria_id = c.id
            ORDER BY e.id;

/* INNER JOIN, mas optimizado y no recorre toda la tabla
 solo trae lo especificamente indicado */
SELECT e.id, e.titulo, u.nombre AS 'AUTOR', c.nombre AS 'CATEGORIA'
    FROM entradas e
        INNER JOIN usuarios u ON e.usuario_id = u.id
        INNER JOIN categorias c ON e.categoria_id = c.id;

/* Mostrar el nombre de las categorias y al lado cuantas entradas tiene */
SELECT c.nombre, COUNT(e.id) FROM categorias c, entradas e
    WHERE e.categoria_id = c.id GROUP BY e.categoria_id;

/* En base al ejemplo anterior utilizar un LEFT JOIN para mostrar todas los valores
 de la tabla de la izquierda y si hay coincidencia con la tabla de la derecha mostrar cuantas */
 SELECT c.nombre, COUNT(e.id) FROM categorias c
    LEFT JOIN entradas e ON e.categoria_id = c.id
        GROUP BY e.categoria_id;

/* Utilizar RIGHT JOIN, similar a LEFT JOIN pero muestra valores de la tabla de la derecha */
SELECT c.nombre, COUNT(e.id) FROM entradas e
    RIGHT JOIN categorias c ON e.categoria_id = c.id
        GROUP BY e.categoria_id;

/* Mostrar el email de los usuarios y al lado cuantas entradas tiene */
SELECT u.email, COUNT(titulo) FROM usuarios u, entradas e
    WHERE e.usuario_id = u.id GROUP BY e.usuario_id;