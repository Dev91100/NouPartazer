<?php
    require_once("Connection.php");

    function test_input($data)
    {
        $data = trim($data);
        $data = stripslashes($data);
        $data = htmlspecialchars($data);
        return $data;
    }

    $memberID = test_input($_POST['memberID']);
    $title    = test_input($_POST['title']);
    $name     = test_input($_POST['name']);
    $surname  = test_input($_POST['surname']);
    $position = test_input($_POST['position']);

    $query = "SELECT memberID FROM MEMBER WHERE memberID='$memberID'";
    $res = mysqli_query($conn, $query);

    if($res)
    {
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
    }
    else
    {
        echo json_encode("false");
    }

?>