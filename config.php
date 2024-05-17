<?php

    $kasutaja = "atursk";
    $dbserver = "localhost";
    $andmebaas = "kohvikud";
    $pw = "Passw0rd";

    $yhendus = mysqli_connect($dbserver, $kasutaja, $pw, $andmebaas);
    if(!$yhendus){
        die("Sa jälle ebaõnnestusid!");
    }
?>