<?php 
    require_once("Connection.php");

    $orgID            = $_POST['orgID'];

    $locationName     = $_POST["locationName"];
    $locationAddress  = $_POST["locationAddress"];
    $eventType        = $_POST["eventType"];
    $eventDescription = $_POST["eventDescription"];
    $dateOfEvent      = $_POST["dateOfEvent"];
    $perishable       = $_POST["perishable"];
    $nonPerishable    = $_POST["nonPerishable"];

    $tmpFolder = "uploads/" . 'business/' . $orgID . 'tmp/';
    $newFolder = "uploads/" . 'business/' . $orgID . 'event/';
    $file      = scandir($tmpFolder);

    // file[0] = '.'
    // file[1] = '..'

    if($file[2] != null)
    {
        rename($tmpFolder.$file[2], $newFolder.$file[2]);

        if($nonPerishable == 'false')
        {
            $foodTypeID = 1;
        }
        else if($perishable == 'false')
        {
            $foodTypeID = 2;
        }
        else
        {
            $foodTypeID = 3;
        }

        $query = "INSERT INTO EVENT (foodTypeID, locationName, locationAddress, eventType, eventDescription, dateOfEvent, image) VALUES ('$foodTypeID', '$locationName', '$locationAddress', '$eventType', '$eventDescription', '$dateOfEvent', '$file[2]')";

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
        echo json_encode("NO IMAGE");
    }
?>