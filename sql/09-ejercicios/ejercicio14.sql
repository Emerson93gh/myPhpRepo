/*
14- Visualizar las unidades totales vendidas de cada coche a cada cliente.
mostrando el nombre del producto, numero de cliente y la suma de unidades.
*/

SELECT c.modelo AS 'COCHE', cli.nombre AS 'CLIENTE', SUM(e.cantidad) AS 'UNIDADES' FROM encargos e
INNER JOIN coches c ON c.id = e.coche_id
INNER JOIN clientes cli ON cli.id = e.cliente_id
GROUP BY e.coche_id, e.cliente_id; 

/* Agrupamos de forma mas especifica por coche_id y por cliente_id 
Si no solo agruparia por coche_id y sumaria la unidad al primer cliente 
aunque hubiesen diferentes clientes.
*/