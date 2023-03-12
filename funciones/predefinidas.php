<?php

// Debugguear
$nombre = "Alexander";
var_dump($nombre);
echo "<br/>";
// Fechas
echo date('d-m-Y');
echo "<br/>";
echo time();
// Matematicas
echo "<br/>";
echo "La raiz cuadrada de 10: " . sqrt(10);
echo "<br/>";
echo "Numero aleatorio entre 10 y 40: " .rand(10, 40);
echo "<br/>";
echo "Numero pi: " .pi();
echo "<br/>";
echo "Redondear: " .round(7.819453); //mas precision a 2 decimales = .round(7.819453, 2);

// mas funciones generales
echo "<br/>";

// detectar el tipo/tipado de las variables
echo gettype($nombre);
echo "<br/>";
if(is_string($nombre)) {
    echo 'Es una variable de tipo String';
}
echo "<br/>";
if(!is_float($nombre)) {
    echo 'No es un numero con decimales';
}
echo "<br/>";

// para determinar si existe o no, usamos isset
if(isset($edad)) {
    echo "La variable existe";
} else {
    echo "La variable no existe";
}
echo "<br/>";

// limpiar espacios delante y detras del contenido, usamos trim
$frase = "    mi contenido   ";
var_dump($frase); // resultado 19 caracteres en el String
echo "<br/>";
var_dump(trim($frase)); // resultado 12 caracteres en el String, ok.
echo "<br/>";

// eliminar variables o indices, usamos unset
$year = 2023;
unset($year);
var_dump($year); // resultado NULL, variable no existe.
echo "<br/>";

// comprobar variable vacia o con valor 0
$texto = "abc";
if(empty($texto)) {
    echo "La variable esta vacia";
} else {
    echo "La variable tiene contenido";
}
echo "<br/>";

// contar caracteres de un string
$cadena = '12345';
echo strlen($cadena); // resultado 5
echo "<br/>";

// encontrar la posicion de un caracter o palabra
$frase = "La vida es bella";
echo strpos($frase, "vida"); // resultado 3
echo "<br/>";

// reemplazar palabras de una frase
$frase = str_replace("vida", "moto", $frase);
echo $frase; // resultado La moto es bella
echo "<br/>";

// minusculas y MAYUSCULAS
echo strtolower($frase); // la moto es bella
echo "<br/>";
echo strtoupper($frase); // LA MOTO ES BELLA
echo "<br/>";