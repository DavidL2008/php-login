<?php
session_start();
require 'database.php';

if(isset($_SESSION['user_id'])){
    $records=$conn->prepare('SELECT id, email, password FROM users WHERE id=:id');
    $records->bindParam(':id',$_SESSION['user_id']);
    $records->execute();
    $results=$records->fetch(PDO::FETCH_ASSOC);

    $user=null;

    if(count($results)>0){
        $user=$results;
    }
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="assets/css/style.css">
    <title>Halo Presidentee</title>
</head>
<body>
    <?php require 'partials/header.php'?>

    
    <?php if(!empty($user)):?>
        <br>Bienvenido.
        <br><?=$user['email'];?>
        <br>Se inicio Sesion correctamente
        <br><a href="logout.php">Cerrar Sesion</a>

    <?php else: ?>
        <h1>Porfavor<br>Inicie Sesion o Registrese</h1>
        <a href="login.php">Iniciar Sesion</a>
        <br><a href="signup.php">Registrarse</a>
    <?php endif;?>
    

</body>
</html>