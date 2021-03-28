<?php
    require_once("Connection.php");

    $email = $_POST['email'];

    $sql = "SELECT * FROM PROFILE WHERE email='$email'";
    $result= mysqli_query($conn, $sql);

    if(mysqli_num_rows($result) === 1)
    {
        $row = mysqli_fetch_assoc($result);

        $bannerPhoto = $row['bannerPhoto'];

        echo json_encode($bannerPhoto);
    }
    else
    {
        echo json_encode("false");
    }
?>