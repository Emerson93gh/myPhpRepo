/*
27. visualizar el nombre de los clientes y de encargos realizados,
incluyendo los que no hayn realizado encargos
*/

INSERT INTO clientes VALUES (NULL, 5, 'Tienda Organica Inc', 'San Miguel', 0, CURDATE());

SELECT cli.nombre, COUNT(e.id) FROM clientes cli 
LEFT JOIN encargos e ON cli.id = e.cliente_id
GROUP BY 1;

/* LEFT nos muestra toda la tabla de la izquierda y con ello mostramos al cliente que no ha realizado encargo */