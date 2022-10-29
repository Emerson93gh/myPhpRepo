<?php
/*
Funciones, son conjuntos de instrucciones agrupadas y que pueden ser reutilizadas

function nombreDeMiFuncion($parametro){
    // conjunto de instrucciones
}

nombreDeMiFuncion($mi_parametro);
nombreDeMiFuncion($mi_parametro2);
*/

// Ejemplo 1
function muestraNombres() {
    echo "Emerson Solano <br/>";
    echo "Emerson Solano <br/>";
    echo "Emerson Solano <br/>";
    echo "Emerson Solano <br/>";
}
// Invocar funcion
muestraNombres();

// Ejemplo 2
function tabla($numero) {
    //var_dump($numero);
    echo "<h3>Tabla de multiplicar del numero: $numero </h3>";
    
    for($i = 1; $i <= 10; $i++) {
        $operacion = $numero * $i;
        echo "$numero X $i = $operacion <br/>";
    }
}

if(isset($_GET['numero'])) {
    tabla($_GET['numero']);
} else {
    echo "No hay un numero para obtener la tabla de multiplicar";
}

/*
Alternativa, para imprimir las tablas de multiplicar del 1 al 10

for($i = 1; $i <= 10; $i++) {
    tabla($i);
}

*/
// Ejemplo 3 Parametros
//  function calculadora($numero1, $numero2) {
//     // conjunto de operaciones
//     $suma = $numero1 + $numero2;
//     $resta = $numero1 - $numero2;
//     $multiplicacion = $numero1 * $numero2;
//     $division = $numero1 / $numero2;

//     echo "Suma: $suma <br/>";
//     echo "Resta: $resta <br/>";
//     echo "Multiplicacion: $multiplicacion <br/>";
//     echo "Division: $division <br/>";
//     echo "<hr/>";
//  }

//  calculadora(10, 30);
//  calculadora(30, 10);

// Ejemplo 4 parametros opcionales
function calculadora($numero1, $numero2, $negrita = false) {
    // conjunto de operaciones
    $suma = $numero1 + $numero2;
    $resta = $numero1 - $numero2;
    $multiplicacion = $numero1 * $numero2;
    $division = $numero1 / $numero2;

    if($negrita){
        echo "<h1>";
    }
    echo "Suma: $suma <br/>";
    echo "Resta: $resta <br/>";
    echo "Multiplicacion: $multiplicacion <br/>";
    echo "Division: $division <br/>";
    if($negrita){
        echo "</h1>";
    }
    echo "<hr/>";
 }

 calculadora(10, 30);
 calculadora(30, 10, true);

?>