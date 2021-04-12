<?php 
    require_once("Connection.php");

    function test_input($data)
    {
        $data = trim($data);
        $data = stripslashes($data);
        $data = htmlspecialchars($data);
        return $data;
    }

    $brn           = test_input($_POST["brn"]);
    $companyName   = test_input($_POST["companyName"]);
    $businessName  = test_input($_POST["businessName"]);
    $website       = test_input($_POST["website"]);
    $contactNumber = test_input($_POST["contactNumber"]);
    $email         = test_input($_POST["email"]);
    $password      = trim($_POST["password"]);

    /*
    select brn and put result in a variable
    select email and put result in a variable
    compare both variables if they are the same as entered in the text fields
    */
    $query = "SELECT brn FROM BUSINESS WHERE brn='$brn'";
    $res = mysqli_query($conn, $query);
    $row = mysqli_fetch_assoc($res);
    $brnToBeChecked = $row['brn'];

    $query = "SELECT email FROM PROFILE WHERE email='$email'";
    $res = mysqli_query($conn, $query);
    $row = mysqli_fetch_assoc($res);
    $emailToBeChecked = $row['email'];

    if ($brn == $brnToBeChecked || $email == $emailToBeChecked)
    {
        echo json_encode("account already exists");
    }
    else
    {    //Insert most of the data retrieved in business table
        $query = "INSERT INTO BUSINESS (brn, companyName, businessName, website, contactNumber) VALUES ('$brn', '$companyName', '$businessName', '$website', '$contactNumber')";
        $res = mysqli_query($conn, $query);

        if($res)
        {
            $query = "SELECT businessID FROM BUSINESS WHERE brn='$brn'";
            $res = mysqli_query($conn, $query);
            
            if($res)
            {
                //Insert remaining data into profile table
                $row = mysqli_fetch_assoc($res);
                $businessID = $row['businessID'];

                $query = "INSERT INTO PROFILE (businessID, email, password) VALUES ('$businessID', '$email', '$password')";
                $res = mysqli_query($conn, $query);
                if ($res)
                {
                    $mainDirectory = 'uploads/' . 'business/' . $brn;

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

                    $directory = $mainDirectory . '/event';
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