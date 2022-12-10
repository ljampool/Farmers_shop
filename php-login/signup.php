<?php

  require 'database.php';

  $message = '';

  if (!empty($_POST['name']) && !empty($_POST['lastname']) && !empty($_POST['phonenumber']) && !empty($_POST['email']) && !empty($_POST['password'])) {
    $sql = "INSERT INTO users (name, lastname, phonenumber, email, password) VALUES (:name, :lastname, :phonenumber, :email, :password)";
    $stmt = $conn->prepare($sql);
    $stmt->bindParam(':name', $_POST['name']);
    $stmt->bindParam(':lastname', $_POST['lastname']);
    $stmt->bindParam(':phonenumber', $_POST['phonenumber']);
    $stmt->bindParam(':email', $_POST['email']);
    //$stmt->bindParam(':password', $_POST['password']);
    $password = password_hash($_POST['password'], PASSWORD_BCRYPT);
    $stmt->bindParam(':password', $password);

    if ($stmt->execute()) {
      $message = 'Successfully created new user';
    } else {
      $message = 'Sorry there must have been an issue creating your account';
    }
  }
  // $contraseña = $_POST['password'];
  // $confirmarcontraseña = $_POST['confirm_password'];
  // if($contraseña == $confirmarcontraseña){
  //   function contraseñaigual(){

  //   }
  // }
?>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>SignUp</title>
    <link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet">
    <link rel="stylesheet" href="assets/css/style.css">
    <!-- <script src="http://code.jquery.com/jquery-2.1.4.min.js"></script>
    <script src="script.js"></script> -->
  </head>
  <body>

    <?php require 'partials/header.php' ?>

    <?php 

    if(!empty($message)){
      echo  "<p>" . $message . "</p>";
    } 
     ?>

    <h1>SignUp</h1>
    <span>or <a href="login.php">Login</a></span>

    <form action="../index.php" method="POST">
      <input name="name" type="text" placeholder="Enter your name" required>
      <input name="lastname" type="text" placeholder="Enter your last name">
      <input style="outline: none;padding: 20px;display: block;width: 300px;border-radius: 3px;border: 1px solid #eee;margin: 20px auto" name="phonenumber" type="number" placeholder="Enter your phone number" required>
      <input style="outline: none;padding: 20px;display: block;width: 300px;border-radius: 3px;border: 1px solid #eee;margin: 20px auto" name="email" type="email" placeholder="Enter your email" required>
      <!-- <label for="pass1">Contraseña:</label> -->
      <!-- <input name="password" type="password" placeholder="Enter your Password" id="pass1" required> -->
      <input name="password" type="password" placeholder="Enter your Password" required>
      <!-- <div id="error1"></div> -->
      <!-- <label for="pass2">Repetir contraseña:</label> -->
      <!-- <input name="confirm_password" type="password" placeholder="Confirm Password" id="pass2" required> -->
      <input name="confirm_password" type="password" placeholder="Confirm Password" required>
      <!-- <span id="error2"></span> -->
      <input type="submit" value="Submit">
    </form>
  </body>
</html>
