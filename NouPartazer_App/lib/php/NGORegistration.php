<?php 
    require_once("Connection.php");

    $regNumber = $_POST["regNumber"];
    $regName = $_POST["regName"];
    $ngoExpertise = $_POST["ngoExpertise"];
    $memberSize = $_POST["memberSize"];
    $address = $_POST["address"];
    $website = $_POST["website"];
    $title = $_POST["title"];
    $name = $_POST["name"];
    $surname = $_POST["surname"];
    $position = $_POST["position"];
    $contactNumber = $_POST["contactNumber"];
    $email = $_POST["email"];
    $password = $_POST["password"];

    $query = "SELECT * FROM NGO WHERE brn LIKE '$regNumber'";

    $res = mysqli_query($conn, $query);
    $data = mysqli_fetch_array($res);

    if($data[0] >= 1)
    {
        echo json_encode("account already exist");
    } else
    {
        $query = "INSERT INTO NGO (regNumber, regName, ngoExpertise, memberSize, address, contactNumber, website) VALUES ('$regNumber', '$regName', '$ngoExpertise', '$memberSize', '$address', '$contactNumber', '$website')";

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

?>