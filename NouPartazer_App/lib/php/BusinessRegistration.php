<?php 
    require_once("Connection.php");

    $brn = $_POST["brn"];
    $companyName = $_POST["companyName"];
    $businessName = $_POST["businessName"];
    $website = $_POST["website"];
    $contactNumber = $_POST["contactNumber"];

    $query = "SELECT * FROM BUSINESS WHERE brn LIKE '$brn'";

    $res = mysqli_query($conn, $query);
    $data = mysqli_fetch_array($res);

    if($data[0] >= 1)
    {
        echo json_encode("account already exist");
    } else
    {
        $query = "INSERT INTO BUSINESS (brn, companyName, businessName, website, contactNumber) VALUES ('$brn', '$companyName', '$businessName', '$website', '$contactNumber')";

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