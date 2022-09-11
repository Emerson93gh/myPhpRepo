/*
6. Visualizar los vendedores con su nombre y apellidos en una misma columna
su fecha de registro y el dia que era cuando se registro.
*/
SELECT CONCAT(nombres, ' ', apellidos) AS 'NOMBRE COMPLETO',
    fecha_alta, DAYNAME(fecha_alta) FROM vendedores;