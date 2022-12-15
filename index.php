<?php
// var_dump(session_start());
// session_start();
require 'funciones.php';


?>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
  <meta name="description" content="">
  <meta name="author" content="">

  <title>Farmer Shop</title>

  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">

  <!-- Latest compiled and minified CSS -->
  <link rel="stylesheet" href="assets/css/bootstrap.min.css">
  <link rel="stylesheet" href="assets/css/estilos.css">
  <link rel="stylesheet" href="css/index.css">
  <link rel="stylesheet" href="css/style.css">
  <link rel="stylesheet" href="css/estilos.css">

  <script src="https://kit.fontawesome.com/887a835504.js" crossorigin="anonymous"></script>
</head>

		
<body style="background: url(granja.jpg); background-size: 100% 100%; background-repeat: no-repeat; margin: 0; padding: 0; min-height: 100vh;">

  <!-- <header class="header"> -->
    <!-- Fixed navbar -->
    <!-- <div class="navbar navbar-expand-lg " style="display: flex; align-items: baseline; border-radius: 0; background-color: rgb(99, 53, 19);"> -->

      <div class="container">
        <div class="logo">
          <!-- <div class="btn-menu">
            <label for="btn-menu" style="padding: -10px 0 0 0;">☰</label>
          </div> -->
          <a href="panel/index.php">
            Farmer Shop
          </a>
        </div>
        <nav class="menu"><?php require 'php-login/index.php' ?>

        <?php if (!empty($user)) : ?>
          <p style="color: white; margin: 0;"><?= $user['name']; ?></p>
          <a href="php-login/logout.php">
            Logout
          </a>
        <?php else : ?>
          <a href="php-login/login.php">Login</a>
          <a href="php-login/signup.php">SignUp</a>
        <?php endif; ?>
        <a href="juegos_locales/index.php"><i class='fas fa-store'></i> Tiendas asociadas</a>
          <a href="contacto/index.html">Contacto</a>
          <a href="carrito.php" class="btn" style="margin: 12px; color: white;">Carrito <span class="badge"><?php print cantidadPeliculas(); ?></span></a>
        </nav>
      </div>

      <!--/.nav-collapse -->
    <!-- </div> -->


  <!-- </header> -->

  <div class="capa"></div>
  <!--	--------------->
  <input type="checkbox" id="btn-menu">
  <div class="container-menu" style="z-index: 20;">
    <div class="cont-menu">
      <nav>
        
      </nav>
      <label for="btn-menu">✖️</label>
    </div>
  </div>


  <div class="carrousel">
    <div class="conteCarrousel">

      <div class="itemCarrousel" id="itemCarrousel-1">
        <p class="carusel"><span class="pala">Tractor</span></p>
        <div class="itemCarrouselArrows">
          <a href="#itemCarrousel-3">
            <i class="fas fa-chevron-left" style="color: white;"></i>
          </a>
          <img class="image" src="img/tractor1.jpg" onmouseover="this.src='img/tractor2.jpg'" onmouseout="this.src='img/tractor3.jpg'" style="width: 100%; height: 100%; object-fit: contain; object-position: center">
          <a href="#itemCarrousel-2">
            <i class="fas fa-chevron-right" style="color: white;"></i>
          </a>
        </div>
      </div>

      <div class="itemCarrousel" id="itemCarrousel-2">
        <p class="carusel"><span class="pala">Segadora</span></p>
        <div class="itemCarrouselArrows">
          <a href="#itemCarrousel-1">
            <i class="fas fa-chevron-left" style="color: white;"></i>
          </a>
          <img class="image" src="img/segadora1.jpg" onmouseover="this.src='img/segadora2.jpg'" onmouseout="this.src='img/segadora3.jpg'" style="width: 100%; height: 100%; object-fit: contain; object-position: center">
          <a href="#itemCarrousel-3">
            <i class="fas fa-chevron-right" style="color: white;"></i>
          </a>
        </div>
      </div>

      <div class="itemCarrousel" id="itemCarrousel-3">
        <p class="carusel"><span class="pala">Cosechadora</span></p>
        <div class="itemCarrouselArrows">
          <a href="#itemCarrousel-2">
            <i class="fas fa-chevron-left" style="color: white;"></i>
          </a>
          <img class="image" src="img/cosechadora1.jpg" onmouseover="this.src='img/cosechadora2.jpg'" onmouseout="this.src='img/cosechadora3.jpg'" style="width: 100%; height: 100%; object-fit: contain; object-position: center">
          <a href="#itemCarrousel-1">
            <i class="fas fa-chevron-right" style="color: white;"></i>
          </a>
        </div>
      </div>

    </div>
    <div class="conteCarrouselController">
      <a href="#itemCarrousel-1">•</a>
      <a href="#itemCarrousel-2">•</a>
      <a href="#itemCarrousel-3">•</a>
    </div>
  </div>


  <main>
    <div class="container">
      <div class="row row-cols-1 row-cols-sm-2 row-cols-md-4 g-3">
        <!-- class="row row-cols-4 row-cols-sm-2 row-cols-md-3 g-3" id="columnas" -->
        <!-- style=" display: flex; flex-direction: row; flex-wrap: wrap; align-content: flex-start;" -->
        <?php
        require 'vendor/autoload.php';
        $pelicula = new Kawschool\Pelicula;
        $info_peliculas = $pelicula->mostrar();
        $cantidad = count($info_peliculas);
        if ($cantidad > 0) {
          for ($x = 0; $x < $cantidad; $x++) {
            $item = $info_peliculas[$x];
        ?>

        <!-- <div style="height: 50%;"> -->
            <div class="col" >

              <div class="card shadow-sm" style="height: 100%; flex: 1;">
                <!-- <div class="col-md-3" style="height: 100%;">
                <div class="panel panel-default"> -->
                <div class="panel-body" style="height: 100%;">
                  <?php
                  $foto = 'upload/' . $item['foto'];
                  if (file_exists($foto)) {
                  ?>
                    <img src="<?php print $foto; ?>" class="img-responsive" style="height: auto;">
                  <?php } else { ?>
                    <img src="assets/imagenes/not-found.jpg" class="img-responsive" style="height: auto;">
                  <?php } ?>
                </div>
                <div class="panel-heading">
                  <h1 class="text-center titulo-pelicula"><?php print $item['titulo'] ?></h1>
                  <h3 class="text-center titulo-pelicula"><?php print $item['precio'] ?> COP</h3>
                </div>
                <div class="panel-footer" style="display: flex; justify-content: baseline;">

                  <a href="carrito.php?id=<?php print $item['id'] ?>" class="btn btn-success btn-block">
                    <span class="glyphicon glyphicon-shopping-cart"></span> Comprar
                  </a>
                </div>

              </div>


            </div>
          <!-- </div> -->
          <?php
          }
        } else { ?>
          <h4>NO HAY REGISTROS</h4>

        <?php } ?>
      </div>
    </div>

  </main>

  <!-- /container -->


  <!-- Bootstrap core JavaScript
    ================================================== -->
  <!-- Placed at the end of the document so the pages load faster -->
  <script src="assets/js/jquery.min.js"></script>
  <script src="assets/js/bootstrap.min.js"></script>

</body>

</html>