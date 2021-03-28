<?php 
    require_once("Connection.php");

    $brn = $_POST["brn"];
    $companyName = $_POST["companyName"];
    $businessName = $_POST["businessName"];
    $website = $_POST["website"];
    $contactNumber = $_POST["contactNumber"];
    $email = $_POST["email"];
    $password = $_POST["password"];

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
            $row = mysqli_fetch_assoc($res);
            $businessID = $row['businessID'];

            if($res)
            {
                //Insert remaining data into profile table
                $query = "INSERT INTO PROFILE (businessID, email, password) VALUES ('$businessID', '$email', '$password')";
                $res = mysqli_query($conn, $query);
                if ($res)
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

        }
        else
        {
            echo json_encode("false");
        }
    }
?>