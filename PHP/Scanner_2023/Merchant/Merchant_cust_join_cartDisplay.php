<?php 
$servername = "localhost";
$username = "root";
$password = "";
$database = "scan_2023_new";

// Create connection
$connection = mysqli_connect($servername, $username, $password, $database);
   
// Check connection
if ($connection->connect_error) {
  die("Connection failed: " . $connection->connect_error);
}

  
    
    
    $uid = $_GET['uid'];
 
    
 
 

 $sql = "SELECT cust_cart_product.id as cartid,cust_cart_product.product_qty,cust_cart_product.uid,
 
 merchant_add_product.* FROM cust_cart_product inner join merchant_add_product
 
 ON cust_cart_product.productid =merchant_add_product.productid WHERE cust_cart_product.uid=".$uid; 
    

  
    $result = mysqli_query($connection, $sql) or die("Error in Selecting " . mysqli_error($connection));
     
    
    $response = array();
    if($result->num_rows > 0){
        while($row = $result->fetch_assoc()){
            array_push($response,$row);
        }
    }

    
//$connection->close();
//header('Content-Type: application/json');
echo json_encode($response);


?>

