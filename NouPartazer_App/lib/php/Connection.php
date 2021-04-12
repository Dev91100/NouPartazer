<?php

    $host = "localhost";
    $username = "id16081834_partazer";
    $pass = "FoodShare@5421";
    $dbname = "id16081834_foodsharing";

    try
    {
        $conn = mysqli_connect($host, $username, $pass, $dbname);
        echo 'connected';
    } 
    catch(Exception $e)
    {
        $error = $e->getMessage();
        echo $error;
    }

    if(!$conn){
        die("Connection failed: " . mysqli_connect_error());
    }

?>