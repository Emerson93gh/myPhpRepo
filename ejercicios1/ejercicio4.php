<?php
/*
Ejercicio 4, obtener dos numeros de la url y hacer las 4 operaciones de la calculadora
*/

if(isset($_GET['num1']) && isset($_GET['num2'])){
    $numero1 = $_GET['num1'];
    $numero2 = $_GET['num2'];

    echo "La suma es: " . ($numero1 + $numero2) . "<hr/>";
    echo "La resta es: " . ($numero1 - $numero2) . "<hr/>";
    echo "La multiplicacion es: " . ($numero1 * $numero2) . "<hr/>";
    echo "La division es: " . ($numero1 / $numero2) . "<hr/>";
} else {
    echo "<h1>Ingrese los dos numeros en la URL</h1>";
}

// Ejemplo de URL: http://localhost/masterphp/myPhpRepo/ejercicios1/ejercicio4.php?num1=10&num2=2

?>