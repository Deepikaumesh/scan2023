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
$connection->set_charset("utf8");


$ip_address= '192.168.29.64';
echo $ip_address;

?>
