<?php

include ('db.php');
if(isset($_POST['submit'])){

    $fertilizername = $_POST["fertilizername"];
    $quantity = $_POST["quantity"];
    $location = $_POST["userLocation"];
    $price = $_POST["price"];
    $description = $_POST["userDescription"];
    $mobile = $_POST["mobile"];
    $image = $_FILES['userImage'];
    
    

    $imagefilename= $image['name'];
    

    $imagefileerror=$image['error'];
     

    $imagefiletemp =$image['tmp_name'];
    

    $filename_separate=explode('.',$imagefilename);
   
    $file_extension=strtolower(end($filename_separate));
   

    $extension= array('jpeg','jpg','png');
    if (in_array($file_extension, $extension)) {
        $upload_image='images/'.$imagefilename;

        move_uploaded_file($imagefiletemp, $upload_image);
    

        $sql ="insert into fertilizer (fertilizername,quantity,location,price,Description,mobile,Image) 
        values ('$fertilizername','$quantity','$location','$price','$description','$mobile','$upload_image') ";
        $result=mysqli_query($conn, $sql);
        if ($result) {
            echo "";
        } else {
            die(mysqli_error($conn));
        }
    }
}

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <style>
        img{
            width: 200px;
        }
    </style>
    <title>Fertilizer</title>
    <link rel="stylesheet" >
</head>
<body>

    <div class="main">

    <?php require 'menu.php'; ?>
            
        </div>
        <div class="content">

    <h1>Fertilizers Available</h1>
    <table border="1" class="table table-striped">
    <tr>
    <td>Fertilizer Name </td>
    <td>Quantity </td>
    <td>Location </td>
    <td> Price(Ksh)</td>
    <td>Description</td>
    <td>Mobile</td>
    <td>Image</td>
</tr>

<?php

$sql="Select * from fertilizer ";
$result=mysqli_query($conn,$sql);
while ($row=mysqli_fetch_assoc($result)) {
    $fertilizername=$row['fertilizername'];
    $quantity=$row['quantity'];
    $location =$row['location'];
    $price = $row['price'];
    $description = $row['description'];
    $mobile = $row['mobile'];
    $image =$row['image'];
    
    echo'
<tr>
<td>'.$fertilizername.'</td>
<td>'.$quantity.'</td>
<td> '.$location.'</td>
<td> '.$price.'</td>
<td>'.$description.' </td>
<td>'.$mobile.' </td>
<td><img src='.$image.' /></td>
</tr>

';
}
?>
    </table>
    </div>

    </div>

    <div class="footer">
    <hr color="gold" size="6" noshade>
<br>
<center><small>&copy;Copyright 2021</small></center>
<br/>   
    </div>
</body>
</html> 