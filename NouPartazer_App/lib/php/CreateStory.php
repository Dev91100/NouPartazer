<?php 
    require_once("Connection.php");

    $title = $_POST["title"];
    $description = $_POST["description"];
    $tag = $_POST["tag"];

    $query = "INSERT INTO STORY (title, description, tag) VALUES ('$title', '$description', '$tag')";

    $res = mysqli_query($conn, $query);

    if($res)
    {
        echo json_encode("true");
    }
    else
    {
        echo json_encode("false");
    }
?>