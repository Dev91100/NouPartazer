<?php 
    require_once("Connection.php");

    function test_input($data)
    {
        $data = trim($data);
        $data = stripslashes($data);
        $data = htmlspecialchars($data);
        return $data;
    }

    $regNumber = test_input($_POST["regNumber"]);
    $regName = test_input($_POST["regName"]);
    $ngoExpertise = test_input($_POST["ngoExpertise"]);
    $memberSize = test_input($_POST["memberSize"]);
    $address = test_input($_POST["address"]);
    $website = test_input($_POST["website"]);
    $title = test_input($_POST["title"]);
    $name = test_input($_POST["name"]);
    $surname = test_input($_POST["surname"]);
    $position = test_input($_POST["position"]);
    $contactNumber = test_input($_POST["contactNumber"]);
    $email = test_input($_POST["email"]);
    $password = trim($_POST["password"]);


    if($_SERVER["REQUEST_METHOD"] == "POST")
    {
        $sql = "SELECT regNumber FROM NGO WHERE regNumber='$regNumber'";

        $result= mysqli_query($conn, $sql);

        if(mysqli_num_rows($result) >= 1)
        {
            echo json_encode("account already exist");
        }
        else 
        {
            $sql = "SELECT email FROM PROFILE WHERE email='$email'";

            $result= mysqli_query($conn, $sql);

            if(mysqli_num_rows($result) >= 1)
            {
                echo json_encode("account already exist");
            }
        }
        // else
        // {
        //     echo json_encode("false");
            // $sql = "INSERT INTO NGO (regNumber, regName, ngoExpertise, memberSize, address, contactNumber, website) VALUES ('$regNumber', '$regName', '$ngoExpertise', '$memberSize', '$address', '$contactNumber', '$website')";

            // $result= mysqli_query($conn, $sql);

            // if($result)
            // {
            //     $sql = "SELECT * FROM NGO WHERE regNumber='$regNumber'";
            //     mysqli_query($conn, $sql);

            //     if(mysqli_num_rows($result) === 1)
            //     {
            //         $row = mysqli_fetch_assoc($result);
            //         $ngoID = $row['ngoID'];

            //         $sql = "INSERT INTO PROFILE ngoID, email, password VALUES ('$ngoID', '$email', '$password')";
            //         mysqli_query($conn, $sql);
            //         echo json_encode("true");
            //     }
            //     else
            //     {
            //         echo json_encode("false");
            //     }
            // }
            // else
            // {
            //     echo json_encode("false");
            // }
        // }
    }
?>