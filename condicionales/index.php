<?php
// OPERADORES DE COMPARACION
/*
== igual
=== identico
!= diferente
<> diferente
!== no identico
*/

// Condicional IF
$color = 'rojo';

if ($color === 'rojo') {
    echo 'El color es ROJO';
} else {
    echo 'El color no es rojo';
}

echo '<br>';

$year = 2019;

if ($year < 2019) {
    echo 'Es un anho anterior a 2019';
} else {
    echo 'Es un anho posterior a 2019';
}

// Ejemplo
echo '<br>';
$usuario = "Osucaru Pandulzaru";
$edad = 17;
$mayoria_edad = 18;

if ($edad >= $mayoria_edad) {
    echo "<h1>$usuario es mayor de edad</h1>";
} else {
    echo "<h1>$usuario es menor de edad</h1>";
}
?>