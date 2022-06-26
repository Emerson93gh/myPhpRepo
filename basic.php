<?php
// imprimir en pantalla una cadena de texto
echo 'Inicio con PHP';

// html dentro de php
echo '<h3>Listado:</h3>';

// concatenando cadenas de texto
echo '<ul>'
      .'<li>Opcion 1</li>'
      .'<li>Opcion 2</li>'
      .'<li>Opcion 3</li>'
     .'</ul>';
echo '<p>Esta es toda ' . '-' . ' la lista</p>';
?>

<?='Imprimir en pantalla con un echo atajado'?>

<?php
/*
Comentario multilinia
en php
*/

// Variables
$mi_variable = 'valor de la variable';
$numero = 26;
$verdad = true;

// reasignar otro valor a la variable
$numero = 77;

echo $mi_variable;
echo '<h1>' . $mi_variable . '</h1';

// Tipos de datos
/*
Entero (int / integer) = 99
Coma flotante / decimales (float / double) = 3.56
Cadenas (strings) = 'Mi string'
Booleano (bool) = true or false
Nulo (null)
Array (Coleccion de datos)
Objetos
*/
// obtener tipo de variable
echo gettype($numero);

/*
CONSIDERACIONES ESPECIALES DE LAS VARIABLES

Las variables no pueden iniciar con numeros
no usar guiones
no usar operadores
no usar caracteres especiales
no usar la enhe
*/

// Debugear
var_dump($mi_variable);

// Constantes
define('nombre', 'Emerson Solano');

echo nombre;

// Contantes predefinidas
echo PHP_VERSION;
echo __LINE__;
echo __FILE__;
// ... y muchas mas.

// Operadores en php
$numero1 = 55;
$numero2 = 33;

echo 'Suma: ' . ($numero1 + $numero2);
echo 'Resta: ' . ($numero1 - $numero2);
echo 'Multiplicacion: ' . ($numero1 * $numero2);
echo 'Division: ' . ($numero1 / $numero2);
echo 'Resto: ' . ($numero1 % $numero2);

// Operadores de incremento y decremento
$year = 2019;

$year++;
echo $year;

$year--;
echo $year;

// Operadores de asignacion
$edad = 5;
echo ($edad+=5);

// Variables superglobales
// SERVIDOR
echo $_SERVER['SERVER_ADDR'];
echo $_SERVER['SERVER_NAME'];
echo $_SERVER['SERVER_SOFTWARE'];
echo $_SERVER['HTTP_USER_AGENT'];
echo $_SERVER['REMOTE_ADDR']; // IP CLIENTE

// avance 01 php basic
?>
