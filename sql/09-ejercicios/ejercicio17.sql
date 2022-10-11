/*
17. Obtener listado con los encargos realizados por el cliente: Fruteria ABC Inc
*/
SELECT * FROM encargos WHERE cliente_id IN
(SELECT id FROM clientes WHERE nombre = 'Fruteria ABC Inc');

/* Otra opcion mas atractiva */
SELECT e.id AS 'No. Encargo', e.cantidad, cli.nombre, co.modelo, e.fecha
FROM encargos e
INNER JOIN clientes cli ON cli.id = e.cliente_id
INNER JOIN coches co ON co.id = e.coche_id
WHERE e.cliente_id IN
(SELECT id FROM clientes WHERE nombre = 'Fruteria ABC Inc');