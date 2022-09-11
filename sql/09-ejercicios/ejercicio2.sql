/*
2. Modificar la comision de los vendedores y pornerla al 0.5% cuando ganen en sueldo mas de 3000.
*/
UPDATE vendedores SET comision = 0.5 WHERE sueldo >= 3000;

/*
En MySQL Workbench me dio error code 1175
Solucion:
1-Ir a Edit-->Preferences
2-Haga clic "SQL Editor"en la pestaña y uncheck"Actualizaciones seguras"check box
3-Query--> Reconnect to Server// cerrar sesión y luego iniciar sesión
4-Ahora ejecuta tu consulta SQL
ps, ¡No es necesario reiniciar el demonio/servicio MySQL!
*/