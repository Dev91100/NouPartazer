<?php 
    require_once("Connection.php");

    $image = $_FILES["image"]['name'];
    $name = $_POST['name'];

    $imagePath = 'Uploads/'.$image;
    $tmp_name = $_FilES['image']['tmp_name'];

    move_uploaded_file($tmp_name, $imagePath);

    $email = "test@test.com";
    $password = "test1234";

    $conn->query("INSERT INTO PROFILE(bannerPhoto, email, password) VALUES('".$name."','".$email."','".$password."')");
?>