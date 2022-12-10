<?php

$server = 'localhost';
$username = 'root';
$password = '';
$database = 'tienda_online';

try {
  $conn = new PDO("mysql:host=$server;dbname=$database;", $username, $password);
} catch (PDOException $e) {
  die('Connection Failed: ' . $e->getMessage());
}


//___________________________________________________________________________________________
// $conex = mysqli_connect("localhost", "root", "", "php_login_database");

// if(!mysqli_connect_errno() ) {
//   echo "Conexion exitosa <br/>";
//   echo mysqli_get_host_info($conex) . "<br>";
//   mysqli_close($conex);
// } else {
//   echo "Error en la conexion... Codigo: " . mysqli_connect_errno() . "<br/>";
// }
//___________________________________________________________________________________________
// $conex = mysqli_connect($server, $username, $password, $database);

// if(!mysqli_connect_errno() ) {
//   echo "Conexion exitosa <br/>";
//   $sql = "SELECT * FROM users";
//   $datos = mysqli_query($conex, $sql);
//   $numeroResultados = mysqli_num_rows($datos);
//   if ($numeroResultados > 0) {
//     while($fila = mysqli_fetch_assoc($datos)) {
//       echo "Numero: " . $fila["id"] . "<br>";
//     }
//   }
// } else {
//   echo "0 datos o fila obtenidas...<br/>";
// }
//___________________________________________________________________________________________ 