/*
11- Visualizar todos los cargos y cuantos empleados hay en cada cargo
*/
SELECT cargo, COUNT(id) AS 'Cant. Empleados' FROM vendedores GROUP BY cargo;

/* alternativa de mayor a menor */
SELECT cargo, COUNT(id) AS 'Cant. Empleados' FROM vendedores GROUP BY cargo ORDER BY COUNT(id) DESC;