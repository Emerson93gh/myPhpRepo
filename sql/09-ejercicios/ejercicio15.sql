/*
15- Mostrar los clientes que mas pedidos han hecho y mostrar cuantos hicieron.
*/
SELECT cliente_id, COUNT(id) FROM encargos GROUP BY cliente_id ORDER BY 2 DESC LIMIT 3;

/* ORDER BY 2 indica que se ordene segun la columna 2 de la tabla consultada = cliente_id */

/* ALTERNATIVA */
SELECT cli.nombre, COUNT(e.id) AS 'ENCARGOS' FROM encargos e
INNER JOIN clientes cli ON cli.id = e.cliente_id
GROUP BY e.cliente_id ORDER BY 2 DESC LIMIT 3;