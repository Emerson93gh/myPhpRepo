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
    echo "No hay un numero para obtener la tabla de multiplicar. <br/>";
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

// Ejemplo 4 parametros opcionales y return.
function calculadora($numero1, $numero2, $negrita = false) {
    // conjunto de operaciones
    $suma = $numero1 + $numero2;
    $resta = $numero1 - $numero2;
    $multiplicacion = $numero1 * $numero2;
    $division = $numero1 / $numero2;

    $cadena_texto = "";

    if($negrita){
        $cadena_texto .= "<h1>";
    }
    $cadena_texto .= "Suma: $suma <br/>";
    $cadena_texto .= "Resta: $resta <br/>";
    $cadena_texto .= "Multiplicacion: $multiplicacion <br/>";
    $cadena_texto .= "Division: $division <br/>";
    if($negrita){
        $cadena_texto .= "</h1>";
    }
    $cadena_texto .= "<hr/>";
    return $cadena_texto;
 }

 echo calculadora(10, 30);
 echo calculadora(30, 10, true);

 // Ejemplo 4, utilizando una funcion dentro de otra funcion

 function getNombre($nombre) {
    $texto = "El nombre es: $nombre";
    return $texto;
 }
 function getApellidos($apellidos) {
    $texto = "Los apellidos son: $apellidos";
    return $texto;
 }
 function devuelveElNombre($nombre, $apellidos) {
    $texto = getNombre($nombre)
        ."<br/>". getApellidos($apellidos);
    return $texto;
 }

 echo devuelveElNombre("Alexander", "Solano");

?>