<?php
/*
Ejercicio 5, mostrar todos los numeros entre dos numeros ingresados por la URL
*/

if(isset($_GET['num1']) && isset($_GET['num2'])) {
    $numero1 = $_GET['num1'];
    $numero2 = $_GET['num2'];

    if($numero1 < $numero2) {
        for($i = $numero1; $i <= $numero2; $i++) {
            echo "<h4>$i</h4>";
        }
    } else {
        echo "<h1>El numero 1 debe ser menor al numero 2</h1>";
    }

} else {
    echo "<h1>Ingrese dos numeros en la URL</h1>";
}

?>