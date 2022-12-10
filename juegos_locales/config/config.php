<?php

// define("CLIENT_ID", "AV7-NuN4hQpGRXgwRzypj2B5zyUccdY17NeG0HG8xhuIPcHF4U5zcGofx2UeVUiAVX-Tp8QX6K3k1IM3");
// define("CURRENCY", "MXN");
define("KEY_TOKEN", "APR.wqc-354*");
define("MONEDA", "$");

// session_start();

$num_cart = 0;
if(isset($_SESSION['carrito']['productos'])){
    $num_cart = count($_SESSION['carrito']['productos']);
}

?>