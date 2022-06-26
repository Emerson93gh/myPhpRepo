<?php

// $nombre = $_GET['nombre'];
// $apellido = $_GET['apellidos'];

// echo '<h1>Bienvenido/a ' . $nombre . ' ' . $apellido . '</h1>';

// var_dump($_GET);

$nombre = $_POST['nombre'];
$apellido = $_POST['apellidos'];

echo '<h1>Bienvenido/a ' . $nombre . ' ' . $apellido . '</h1>';

var_dump($_POST);
?>
<br>
<a href="formulario.php">Regresar</a>