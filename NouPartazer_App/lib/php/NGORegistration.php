<?php 
    require_once("Connection.php");

    function test_input($data)
    {
        $data = trim($data);
        $data = stripslashes($data);
        $data = htmlspecialchars($data);
        return $data;
    }

    $regNumber     = test_input($_POST["regNumber"]);
    $regName       = test_input($_POST["regName"]);
    $ngoExpertise  = test_input($_POST["ngoExpertise"]);
    $memberSize    = test_input($_POST["memberSize"]);
    $address       = test_input($_POST["address"]);
    $website       = test_input($_POST["website"]);
    $title         = test_input($_POST["title"]);
    $name          = test_input($_POST["name"]);
    $surname       = test_input($_POST["surname"]);
    $position      = test_input($_POST["position"]);
    $contactNumber = test_input($_POST["contactNumber"]);
    $email         = test_input($_POST["email"]);
    $password      = trim($_POST["password"]);

    /*
    select regNumber and put result in a variable
    select email and put result in a variable
    compare both variables if they are the same as entered in the text fields
    */
    $query = "SELECT regNumber FROM NGO WHERE regNumber='$regNumber'";
    $res = mysqli_query($conn, $query);
    $row = mysqli_fetch_assoc($res);
    $regNumberToBeChecked = $row['regNumber'];

    $query = "SELECT email FROM PROFILE WHERE email='$email'";
    $res = mysqli_query($conn, $query);
    $row = mysqli_fetch_assoc($res);
    $emailToBeChecked = $row['email'];

    if ($regNumber == $regNumberToBeChecked || $email == $emailToBeChecked)
    {
        echo json_encode("account already exists");
    }
    else
    {    //Insert most of the data retrieved in ngo table
        $query = "INSERT INTO NGO (regNumber, regName, ngoExpertise, memberSize, address, website, title, name, surname, position, contactNumber) VALUES ('$regNumber', '$regName', '$ngoExpertise', '$memberSize', '$address', '$website', '$title', '$name', '$surname', '$position', '$contactNumber')";

        $res = mysqli_query($conn, $query);

        if($res)
        {
            $query = "SELECT ngoID FROM NGO WHERE regNumber='$regNumber'";
            $res = mysqli_query($conn, $query);
            
            if($res)
            {
                //Insert remaining data into profile table
                $row = mysqli_fetch_assoc($res);
                $ngoID = $row['ngoID'];

                $query = "INSERT INTO PROFILE (ngoID, email, password) VALUES ('$ngoID', '$email', '$password')";
                $res = mysqli_query($conn, $query);
                if ($res)
                {
                    $mainDirectory = 'uploads/' . 'ngo/' . $regNumber;

                    $directory = $mainDirectory . '/banner';
                    if(!file_exists($directory))
                    {
                        mkdir($directory, 0777, true);
                    }

                    $directory = $mainDirectory . '/profile';
                    if(!file_exists($directory))
                    {
                        mkdir($directory, 0777, true);
                    }

                    $directory = $mainDirectory . '/members';
                    if(!file_exists($directory))
                    {
                        mkdir($directory, 0777, true);
                    }

                    $directory = $mainDirectory . '/story';
                    if(!file_exists($directory))
                    {
                        mkdir($directory, 0777, true);
                    }

                    $directory = $mainDirectory . '/tmp';
                    if(!file_exists($directory))
                    {
                        mkdir($directory, 0777, true);
                    }
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
        }
        else
        {
            echo json_encode("false");
        }
    }
?>