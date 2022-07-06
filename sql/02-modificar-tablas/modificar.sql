/* RENOMBRAR UNA TABLA */
ALTER TABLE usuarios RENAME TO usuarios_renom;

/* CAMBIAR EL NOMBRE DE UNA COLUMNA */
ALTER TABLE usuarios_renom CHANGE apellidos apellido varchar(100) null;

/* MODIFICAR COLUMNA SIN CAMBIAR NOMBRE */
ALTER TABLE usuarios_renom MODIFY apellido char(50) not null;

/* AGREGAR UNA COLUMNA */
ALTER TABLE usuarios_renom ADD website varchar(100) null;

/* AGREGAR RESTICCION A COLUMNA */
ALTER TABLE usuarios_renom ADD CONSTRAINT uq_email UNIQUE(email);

/* BORRAR UNA COLUMNA, aunque contenga datos */
ALTER TABLE usuarios_renom DROP website;