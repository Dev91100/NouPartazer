<?php
    require_once('Connection.php');

    function test_input($data)
    {
        $data = trim($data);
        $data = stripslashes($data);
        $data = htmlspecialchars($data);
        return $data;
    }

    $email = $password= "";

    if ($_SERVER["REQUEST_METHOD"] == "POST")
    {
        if ((empty($_POST['email'])) || (empty($_POST['password'])))
        {
            echo json_encode('Incorrect Username or Password!');
        } 
        else 
        {
            $email = test_input($_POST['email']);
            $password = test_input($_POST['password']);

            // select row
            $sql = "SELECT * FROM PROFILE WHERE email='$email'";
            $result= mysqli_query($conn, $sql);

            if(mysqli_num_rows($result) === 1)
            {
                $row = mysqli_fetch_assoc($result);

                if($password == $row['password'])
                {
                    if($row['ngoID'] != null)
                    {
                        echo json_encode('ngo');
                    }
                    else if($row['businessID'] != null)
                    {
                        echo json_encode('business');
                    }
                    else
                    {
                        echo json_encode('false');
                    }
                    
                }
                else
                {
                    echo json_encode('false');
                }
            }
            else
            {
                echo json_encode('false');
            }
        }
    }
?>