/*
26. Sacar vendedores que tengan jefe y mostrar el nombre del jefe.
*/

SELECT CONCAT(v1.nombres, ' ', v1.apellidos) AS 'Vendedor', CONCAT(v2.nombres, ' ', v2.apellidos) AS 'Jefe' 
FROM vendedores v1 
INNER JOIN vendedores v2 ON v1.jefe = v2.id;