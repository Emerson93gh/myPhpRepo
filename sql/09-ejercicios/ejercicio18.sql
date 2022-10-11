/*
18. listar los clientes que han hecho algun encargo del coche: Corolla Toyota
*/
SELECT * FROM encargos WHERE coche_id IN
(SELECT id FROM coches WHERE modelo = 'Corolla' AND marca = 'Toyota');

/* otra alternativa */
SELECT * FROM clientes WHERE id IN
(SELECT cliente_id FROM encargos WHERE coche_id 
IN (SELECT id FROM coches WHERE modelo LIKE '%Corolla%'));