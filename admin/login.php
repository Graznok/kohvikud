<?php include("../config.php");?>
<?php
session_start();

if (!empty($_GET['kasutaja']) && !empty($_GET['parool'])){
    $kasutaja = $_GET['kasutaja'];
    $parool = $_GET['parool'];
   $paring = "SELECT * FROM kasutajad WHERE kasutajanimi='$kasutaja'";
   $valjund = mysqli_query($yhendus, $paring);


//print_r(mysqli_num_rows($valjund));
if(mysqli_num_rows($valjund)==1){
    $rida = mysqli_fetch_assoc($valjund);
    //print_r($rida ['parool']);
if (password_verify($parool, $rida['parool'])){
   // print_r()
}

   // if ($kasutaja=="admin" && $parool=="admin123") {
        $_SESSION['login']="1";
        header("Location: index.php");

    }else{
        echo "Proovi uuesti!!";
    }
}

?>
<form action="#" metood="get">
    kasutajanimi: <input type ="text" name="kasutaja"><br>
    parool: <input type ="text" name="parool"><br>
    <input type ="submit" name="Logo sisse"><br>


</form>
