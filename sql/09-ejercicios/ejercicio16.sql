/*
16. Obtener el listado de clientes atendidos por el vendedor David Lopez
*/
SELECT * FROM clientes WHERE vendedor_id IN 
(SELECT id FROM vendedores WHERE nombres = 'David' AND apellidos = 'Lopez'); /* CON SUBCOSULTA */