<?php
$servername = "localhost";
$username = "root";
$password = "";
$database = "scan_2023_new";

// Create connection
$connection = mysqli_connect($servername, $username, $password, $database);


  if( !empty($_POST["feedback"]))
{

      $feedback = $_POST["feedback"];
    
      
      $feedback=mysqli_real_escape_string($connection,$feedback);
   

      

 
 

    $sql = "INSERT INTO customer_feedback (feedback) VALUES ('".$feedback."')";


    if ( mysqli_query($connection, $sql) ) {
        $result["error"] = false;
        $result["message"] = "feedback registered";

        echo json_encode($result);
        mysqli_close($connection);

   
}}
?>