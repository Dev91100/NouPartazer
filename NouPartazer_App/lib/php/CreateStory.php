<?php 
    require_once("Connection.php");

    $orgID       = $_POST['orgID'];

    $title       = $_POST["title"];
    $description = $_POST["description"];
    $tag         = $_POST["tag"];

    $tmpFolder   = "uploads/" . 'ngo/' . $orgID . 'tmp/';
    $newFolder   = "uploads/" . 'ngo/' . $orgID . 'story/';
    $file       = scandir($tmpFolder);

    // file[0] = '.'
    // file[1] = '..'

    if($file != null)
    {
        rename($tmpFolder.$file[2], $newFolder.$file[2]);

        $query = "INSERT INTO STORY (title, description, tag, image) VALUES ('$title', '$description', '$tag', '$file[2]')";

        $res = mysqli_query($conn, $query);

        if($res)
        {
            echo json_encode("true");
        }
        else
        {
            echo json_encode("false");
        }
    }
    else
    {
        echo json_encode("false");
    }
?>