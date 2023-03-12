<?php require './includes/cabecera.php'; ?>
<!-- Contenido -->
<div>
    <h2>Esta es la pagina de inicio</h2>
    <p>Texto de prueba de la pagina de inicio</p>
</div>

<?php require 'includes/footer.php'; ?>

<!-- 
    include, con un error lo muestra y continua su ejecucion
    include_once, solo permite incluirlo una vez
    require, similar a include pero mas estricto, un error y lo muestra deteniendo la ejecucion
    require_once, similar a include_once pero mas estricto
 -->