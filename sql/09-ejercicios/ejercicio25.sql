/*
25. obtener una lista de los nombres de los clientes con el importe de sus encargos acumulados.
*/

SELECT cli.nombre, SUM(precio * cantidad) AS 'Importe'
FROM clientes cli
INNER JOIN encargos e ON cli.id = e.cliente_id
INNER JOIN coches co ON e.coche_id = co.id
GROUP BY cli.nombre;

/* ALTERNATIVA */
SELECT cli.nombre, SUM(precio * cantidad) AS 'Importe'
FROM clientes cli
INNER JOIN encargos e ON cli.id = e.cliente_id
INNER JOIN coches co ON e.coche_id = co.id
GROUP BY cli.nombre
ORDER BY 2 ASC;