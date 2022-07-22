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

/* COMPLEMENTOS DE FOREING KEY */
/* EJEMPLO */
CONSTRAINT `fk_categoria_id`
    FOREIGN KEY (`categoria_id`)
    REFERENCES `myBlog`.`CATEGORIAS` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION

ON DELETE CASCADE /* cuando la categoria de esta entrada se borre tambien se borre el registro relacionado */
ON DELETE CASCADE /* si modifica categoria el registro relacionado tambien se modifica */
ON DELETE SET NULL /* cuando se borre la categoria el registro que contiene el id se ponga en null */
ON DELETE SET DEFAULT /* cuando se borre la categoria el registro que contiene el id se ponga en default */
ON DELETE NO ACTION /* cuando se borre no haga nada con el registro */