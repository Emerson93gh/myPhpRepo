<?php
// Bucle while
$numero = 0;

// while ($numero <= 100) {
//     echo "<p>$numero</p>";
//     $numero++;
// }

if (isset($_GET['numero'])) {
    // cambiar tipo de dato
    $numero = (int)$_GET['numero'];
} else {
    $numero = 1;
}

echo "<h1>Tabla de multiplicar del numero $numero</h1>";

$contador = 1;
while($contador <= 10) {
    echo "$numero x $contador = ".($numero*$contador)."<br/>";
    $contador++;
}

echo "<hr/>";
// Do While
$edad = 17;
$contador = 1;
do{
    //instrucciones
    echo "Tienes acceso al local privado $contador <br/>";
    $contador++;
} while($edad >= 18 && $contador <= 10);

// BREAK
/*
break; puede ir dentro de los bucles para hacer pruebas o finalizar el bucle al no cumplir una condicion
*/
?>