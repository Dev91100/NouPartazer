<?php 
    require_once("Connection.php");

    $target_dir = "uploads/";
    $name = $_POST['name'];
    $target_file = $target_dir . $name;

    if (move_uploaded_file($_FILES["image"]["tmp_name"], $target_file))
    {
        echo json_encode("true");
    }
    else
    {
        echo json_encode("false");
    }

    $email = "test@test.com";
    $password = "test1234";

    $conn->query("INSERT INTO PROFILE(bannerPhoto, email, password) VALUES('".$name."','".$email."','".$password."')");
?>