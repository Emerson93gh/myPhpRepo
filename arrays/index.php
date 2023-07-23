<?php
/*
Arrays, es una coleccion de datos o un conjunto de datos, bajo un unico nombre
Para acceder a esos datos/valores podemos usar un indice numerico o alfanumerico
*/

$pelicula = "Batman";
$peliculas = array('Batman', 'Spiderman', 'Iron man');
//otra forma
$cantantes = ['2Pac', 'Drake', 'W&Y'];
//array asociativo
$persona = array(
    "nombres" => "Emerson",
    "apellidos" => "Solano",
    "web" => "emerson93gh.github.io/ppes",
);

var_dump($peliculas[1]);
var_dump($cantantes);
echo "<br>";

echo $peliculas[0];
echo "<br>";
echo $cantantes[2];

//recorrer con for un array
echo "<br><h1>Listado de peliculas</h1><br>";
for($i = 0; $i < count($peliculas); $i++) {
    echo $peliculas[$i];
    echo "<br>";
};

//recorrer con foreach
echo "<br><h1>Listado de cantantes</h1><br>";
foreach($cantantes as $cantante) {
    echo $cantante;
    echo "<br>";
}

//imprimiendo un array asociativo
var_dump($persona);
echo "<br>";
echo $persona['web'];

// Array multidimensionales
$contactos = array(
    array(
        'nombre' => 'Luis Perez',
        'email' => 'lperez@mail.com',
    ),
    array(
        'nombre' => 'Karla Noches',
        'email' => 'knoches@mail.com',
    ),
    array(
        'nombre' => 'Miguel Pereira',
        'email' => 'mpereira@mail.com',
    ),
);

echo "<br><br>";
var_dump($contactos);
echo "<br>";
//como acceder a los valores internos del array
var_dump($contactos[1]['nombre']);
echo "<br><br>";
//como recorrer los nombres de los arrays internos con un foreach
foreach($contactos as $key => $contacto) {
    echo $contacto['nombre'];
    echo "<br>";
}