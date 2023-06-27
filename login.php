<?php

session_start();

if(isset($_SESSION['user_id'])){
    header('Location: /php-login');
}
require 'database.php';



if (!empty($_POST['email']) && !empty($_POST['password'])){
    $records=$conn->prepare ('SELECT id, email, password FROM users WHERE email =:email');
    $records->bindParam(':email',$_POST['email']);
    $records->execute();
    $results=$records->fetch(PDO::FETCH_ASSOC);

    $message='';

    if (count($results)>0 && password_verify($_POST['password'],$results['password'])){
        $_SESSION['user_id']=$results['id'];
        header("Location: /php-login");
    }else{
        $message='Lo siento, Las credenciales no coinciden';
    }
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="assets/css/style.css">
    <title>Iniciar Sesion</title>
</head>
<body>
<?php require 'partials/header.php'?>

    <?php if(!empty($message)):?>
        <p><?=$message?></p>
        <?php endif;?>

    <h1>Iniciar Sesion</h1>
    

    <form action="login.php" method="POST">
        <input type="text" name="email" placeholder="Ingrese su Email">
        <input type="password" name="password" placeholder="Ingrese su password">
        <input type="submit" value="Iniciar Sesion">

        <br><a href="signup.php">Registrarse</a>
</form>
</body>
</html>