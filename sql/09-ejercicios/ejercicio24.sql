/*
24. Listar los encargos con el nombre del coche, el nombre del cliente y el nombre de la ciudad
pero cuando sean unicamente de San Salvador.
*/

SELECT e.id, co.modelo, cli.nombre, cli.ciudad FROM encargos e
INNER JOIN coches co ON co.id = e.coche_id
INNER JOIN clientes cli ON cli.id = e.cliente_id
WHERE cli.ciudad = 'San Salvador';