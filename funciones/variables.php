<?php
/*
Variables locales: son las que se declaran dentro de una funcion y no estan disponible fuera de ella. Salvo se use un return.

Variables globales: son las que se declaran fuera de una funcion y estan disponibles dentro y fuera de funciones.
*/
// variable global
$frase = "Ni los genios son tan genios, ni los mediocres tan mediocres";

echo $frase;

function leerFrase() {
    global $frase;
    echo "<h1>$frase</h1>";

    $year = 2022;
    return $year;
}

echo leerFrase();
echo "<br/>";

// Funciones variables

function buenosDias() {
    return "Hola!! Buenos dias!";
}
function buenasTardes() {
    return "Hey!! que tal estuvo la comida?";
}
function buenasNoches() {
    return "vas a dormir ya? Buenas noches!!!";
}

$horario = "buenasNoches";
echo $horario();

/* Alternativa:
$horario = "Noches"; // o por get en url
$miFuncion = "buenas".$horario;
echo $miFuncion();
*/

?>