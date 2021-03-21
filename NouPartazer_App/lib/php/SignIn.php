<?php 

    require_once('Connection.php');

    $email = $_POST['email'];
    $password = $_POST['password'];

    $query = "SELECT * FROM PROFILE WHERE email LIKE '$email'";

    $res = mysqli_query($conn, $query);
    $data = mysqli_fetch_array($res);

    // From table PROFILE
    // data[0] = profileID, data[1] = ngoID, data[2] = businessID, data[3] = email 
    if($data[3] >= 1)
    {
        // Account exists
        $query = "SELECT * FROM PROFILE WHERE password LIKE '$password'";

        $res = mysqli_query($conn, $query);
        $data = mysqli_fetch_array($res);

        if($data[4] == $password)
        {
            //Password match
            echo json_encode("true");
        }
        else
        {
            echo json_encode("false");
        }
    }
    else
    {
        // Account does not exist
        echo json_encode("Account does not exist");
    }
?>