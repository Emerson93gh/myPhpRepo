<?php
/*
Ejercicio 6, mostrar en pantalla las tablas del 1 al 10, en HTML.
*/
echo "<table border='1'>";
echo "<tr>";
    for($cabecera = 1; $cabecera <= 10; $cabecera++) {
        echo "<td><h4>Tabla del $cabecera</h4></td>";
    }
echo "</tr>";
echo "<tr>";
    for($i = 1; $i <= 10; $i++) {
        echo "<td>";
        for($j = 1; $j <= 10; $j++) {
            echo "$i x $j = " . ($i * $j) . "<hr/>";
        }
        echo "</td>";
    }
echo "</tr>";

echo "</table>";

?>