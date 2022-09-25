/*
13. Sacar la media de los sueldos entre todos los vendedores por grupos.
*/
SELECT AVG(sueldo), grupo_id FROM vendedores GROUP BY grupo_id;

/* alternativa */
SELECT AVG(sueldo) AS 'Media Salarial', g.nombre FROM vendedores v
INNER JOIN grupos g ON g.id = v.grupo_id
GROUP BY grupo_id;

/* otra alternativa sin mostrar decimales */
SELECT CEIL(AVG(sueldo)) AS 'Media Salarial', g.nombre, g.ciudad FROM vendedores v
INNER JOIN grupos g ON g.id = v.grupo_id
GROUP BY grupo_id;