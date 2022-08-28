/* VISTAS:
Es una consulta almacenada en la db que se utiliza como una tabla virtual.
NO almacena datos sino que utiliza asociaciones y los datos originales de
las tablas, y siempre se mantiene actualizada.
 */

CREATE VIEW entradas_con_nombres AS
SELECT e.id, e.titulo, u.nombre AS 'autor', c.nombre AS 'categoria'
    FROM entradas e, usuarios u, categorias c
        WHERE e.usuario_id = u.id AND e.categoria_id = c.id
            ORDER BY e.id;

/* Se podria visualizar la tabla virtual */
SHOW tables;

/* para ver la sentencia de la vista */
SHOW CREATE VIEW entradas_con_nombres;

/* Utilizar la tabla virtual, o vista, que es optima para grandes bd */
SELECT * FROM entradas_con_nombres;

/* Trabajando con vista */
SELECT * FROM entradas_con_nombres WHERE autor = 'Emerson';

/* Eliminar vista */
DROP VIEW entradas_con_nombres;