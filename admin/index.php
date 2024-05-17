<?php include("../config.php"); ?>
<?php
//print_r(password_hash("admin123", PASSWORD_DEFAULT));
        session_start();

        if(!isset($_SESSION['login'])){
            die("Vale koht!");
            header("Location: login.php");
        }
        //print_r($_SESSION['login']);
?>
<a href="logout.php">Logi välja!</a>

<h1>Eriti Salajane</h1>