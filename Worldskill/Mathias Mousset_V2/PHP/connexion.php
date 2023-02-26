<?php

try{
    $dns ='mysql:host=localhost;dbname=portfolio';
    $uttilisateur ='root';
    $motDePasse ='';
    $connection = new PDO($dns, $uttilisateur, $motDePasse);
    $connection->query("SET NAMES utf8");
}catch (Exeption $e){
    echo "connection à MySQL inpossible : ", $e->getMessage();
    die();
}

?>