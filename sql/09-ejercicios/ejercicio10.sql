/*
10. Mostrar los apellidos de los vendedores, su fecha y numero de grupo, ordenado
por fecha descendente y solo mostrar 4 registros
*/
SELECT apellidos, fecha_alta, grupo_id FROM vendedores
    ORDER BY fecha_alta DESC LIMIT 4;