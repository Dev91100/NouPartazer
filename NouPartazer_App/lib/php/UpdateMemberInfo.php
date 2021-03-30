<?php
    require_once("Connection.php");

    function test_input($data)
    {
        $data = trim($data);
        $data = stripslashes($data);
        $data = htmlspecialchars($data);
        return $data;
    }

    $memberID  = test_input($_POST['memberID']);
    $title     = test_input($_POST['title']);
    $name      = test_input($_POST['name']);
    $surname   = test_input($_POST['surname']);
    $position  = test_input($_POST['position']);
    $orgID     = test_input($_POST['orgID']);

    $tmpFolder = "uploads/" . 'ngo/' . $orgID . 'tmp/';
    $newFolder = "uploads/" . 'ngo/' . $orgID . 'members/';
    $file      = scandir($tmpFolder);

    if($file[2] != null) // If user has modified the image also, it will appear in tmp folder
    {
        $fileName = $file[2];
        rename($tmpFolder.$file[2], $newFolder.$file[2]);

        $query = "UPDATE MEMBER SET image = '$fileName' WHERE memberID = '$memberID'";
        $res = mysqli_query($conn, $query);
    }

    $query = "UPDATE MEMBER SET title = '$title', name = '$name', surname = '$surname', position = '$position' WHERE memberID = '$memberID'";

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