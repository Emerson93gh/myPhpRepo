/*
5. Mostrar todos los vendedores con su nombre y con los dias que llevan
en el consesionario.
*/
SELECT nombres, DATEDIFF(CURDATE(), fecha_alta) AS 'dias' FROM vendedores;