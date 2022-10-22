/*
22. Mostrar listado de clientes, numero de cliente y nombre
mostrar tambien el numero de vendedor y nombre.
*/

SELECT cli.id, cli.nombre, v.id, CONCAT(v.nombres, ' ', v.apellidos) AS 'Vendedor'
FROM clientes cli, vendedores v
WHERE cli.vendedor_id = v.id;