/* Insertar nuevos registros - id, nombres, apellidos, email, pass, fecha */
INSERT INTO usuarios VALUES (null, 'Emerson', 'Solano', 'es@gmail.com', '1234', '2022-07-21');

/* Insertar filas para ciertas columnas - insert avanzado 
 Da error si no se toman en cuenta las columnas que no pueden ser nulas,
 omitir solo las columnas que permiten valores nulos.
*/
INSERT INTO usuarios(email, password) VALUES ('ejemplo@mail.com', '4321');