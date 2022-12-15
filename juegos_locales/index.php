<?php
// session_start();
require 'config/config.php';
require 'config/database.php';
$db = new Database();
$con = $db->conectar();

$sql = $con->prepare("SELECT id, nombre, precio FROM productos WHERE activo=1");
$sql->execute();
$resultado = $sql->fetchAll(PDO::FETCH_ASSOC);

// session_destroy();

// print_r($_SESSION);

?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Farmer Shop</title>


    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
    <link href="css/estilos.css" rel="stylesheet">
</head>

<body style="background: url(granja.jpg); background-size: 100% 100%; background-repeat: no-repeat; margin: 0; padding: 0;">

    <header>
        <div class="navbar navbar-expand-lg navbar-dark bg-dark">
            <div class="container" style="display: flex; justify-content: center;">
                <a href="../index.php" class="navbar-brand">
                <h1>Farmer Shop</h1> 
                </a>
                <?php require 'php-login/index.php' ?>

                <?php if (!empty($user)) : ?>
                    <p style="color: white; margin: 0;"><?= $user['name']; ?></p>
                    <a href="php-login/logout.php" class="btn" style="margin: 12px; color: white; background-color: rgb(255, 0, 0);">
                        Logout
                    </a>
                <?php else : ?>
                    <a href="php-login/login.php" class="btn" style="margin: 12px; color: white;">Login</a>
                    <p style="color: white; margin: 0;">or</p>
                    <a href="php-login/signup.php" class="btn" style="margin: 12px; color: white;">SignUp</a>
                <?php endif; ?>
            </div>
        </div>
        </div>
    </header>

    <main>
        <div class="container">
            <div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-3">
                <?php foreach ($resultado as $row) { ?>
                    <div class="col">
                        <div class="card shadow-sm" style="height: auto;">
                            <?php

                            $id = $row['id'];
                            $imagen = "images/productos/" . $id . "/principal.jpg";

                            if (!file_exists($imagen)) {
                                $imagen = "images/no-photo.jpg";
                            }

                            ?>
                            <img src="<?php echo $imagen; ?>" style="height: 280px; width: auto; object-fit: contain">
                            <div class="card-body">
                                <h5 class="card-title"><?php echo $row['nombre']; ?></h5>
                                <p class="card-text">$ <?php echo number_format($row['precio'], 2, '.', ','); ?></p>
                                <div style="display: flex; justify-content: center;">
                                    <div class="btn-group" style="width: 100%;" >
                                        <a href="details.php?id=<?php echo $row['id']; ?>&token=<?php echo hash_hmac('sha1', $row['id'], KEY_TOKEN); ?>" class="btn btn-primary">Detalles</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                <?php } ?>
            </div>
        </div>
    </main>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>

    <script>
        function addProducto(id, token) {
            let url = 'clases/carrito.php'
            let formData = new FormData()
            formData.append('id', id)
            formData.append('token', token)

            fetch(url, {
                    method: 'POST',
                    body: formData,
                    mode: 'cors'
                }).then(response => response.json())
                .then(data => {
                    if (data.ok) {
                        let elemento = document.getElementById("num_cart")
                        elemento.innerHTML = data.numero
                    }
                })
        }
    </script>

</body>

</html>