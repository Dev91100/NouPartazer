<?php 
    require_once("Connection.php");

    $org         = $_POST['org'];
    $orgID       = $_POST['orgID'];
    $folderType  = $_POST['folderType'];
    $deletePhoto = $_POST['deletePhoto'];

    $target_dir  = "uploads/" . $org . $orgID . $folderType;
    $name        = $_POST['name'];
    $target_file = $target_dir . $name;

    if($deletePhoto == 'true')
    {
        $files = glob("uploads/" . $org . $orgID . $folderType . '/*');
        
        foreach($files as $file)
        {
            if(is_file($file))
            {
                unlink($file);
            }
        }
    }

    if (move_uploaded_file($_FILES["image"]["tmp_name"], $target_file))
    {
        echo json_encode("true");
    }
    else
    {
        echo json_encode("false");
    }
?>