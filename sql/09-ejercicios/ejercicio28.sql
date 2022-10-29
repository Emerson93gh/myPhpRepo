/*
28. Mostrar todos los vendedores y numero de clientes 
se deben mostrar tengan o no clientes
*/

SELECT v.nombres, v.apellidos, COUNT(cli.id) AS '# de Clientes' FROM vendedores v 
LEFT JOIN clientes cli ON cli.vendedor_id = v.id
GROUP BY v.id;