<?php
/*
Ejercicio 3, escribir en pantalla los cuadrados de los primeros 40 numeros naturales.
Con While
*/

// for($i = 1; $i <= 40; $i++){
//     $resultado = $i * $i;
//     echo "$resultado<br/>";
// }
$i = 1;
while($i <= 40) {
    $resultado = $i * $i;
    echo "$resultado<br/>";
    $i++;
}

?>