<?php

require 'database.php';



if (!empty($_POST['email'])&& !empty($_POST['password'])){
    $sql="INSERT INTO users (email, password) VALUES (:email, :password)";
    $stmt = $conn->prepare($sql);
    $stmt->bindParam(':email',$_POST['email']);
    $password= password_hash($_POST['password'], PASSWORD_BCRYPT);
    $stmt->bindParam(':password',$password);

    $message='';
    if ($stmt->execute())  {
        $message='Nuevo Usuario Registrado';
    }else{
        $message='Lo siento, ocurrio un problema al crear un Nuevo Usuario';
    }
}


?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="assets/css/style.css">
    <title>Registrase</title>
</head>
<body>
    <?php require 'partials/header.php'
        ?>

    <?php if(!empty($message)):?>
        <p><?=$message?></p>
        <?php endif;?>

        <h1>Registrarse</h1>
        

        <form action="signup.php" method="POST">
        <input type="text" name="email" placeholder="Ingrese su Email">
        <input type="password" name="password" placeholder="Ingrese su password">
        <!--<input type="password" name="confirm_password" placeholder="Confirm your password">-->
    
        <input type="submit" value="Registrar">
        <br><a href="login.php">Iniciar Sesion</a>
</form>
</body>
</html>