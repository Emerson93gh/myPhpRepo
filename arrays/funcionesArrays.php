<?php

$cantantes = ['2Pac', 'Drake', 'W&Y', 'Antony', 'Bucky'];

//asort, para ordenar el array en orden alfabetico
asort($cantantes);
echo "<br><h1>Listado de cantantes</h1><br>";
var_dump($cantantes);

//arsort, ordena en orden inverso alfabetico
arsort($cantantes);
echo "<br>";
var_dump($cantantes);

//sort, tambien ordena alfabeticamente pero tambien puedo ordenar numericamente
$numeros = [1,2,5,8,3,4];
sort($numeros);
echo "<br>";
var_dump($numeros);

//agregar elementos al array
$cantantes[] = "Arcangel";
array_push($cantantes, "Bad Bunny");
echo "<br>";
var_dump($cantantes);

//pop, para quitar el ultimo indice del array
array_pop($cantantes);
echo "<br>";
var_dump($cantantes);

//unset, para eliminar un valor del array segun su indice
unset($cantantes[3]);
echo "<br>";
var_dump($cantantes);

//sacar del array un elemento aleatorio
$indice = array_rand($cantantes);
echo "<br>".$cantantes[$indice]."<br>";

//dar la vuelta a un array
$num = array_reverse($numeros);
echo "<br>";
var_dump($num);

//buscar dentro de un array y retorna el indice donde se encuentra o false si no existe
$result = array_search('W&Y', $cantantes);
echo "<br>";
var_dump($result); 

// contar el numero de elementos de un array
echo "<br>";
echo count($cantantes);
echo "<br>";
echo sizeof($numeros);