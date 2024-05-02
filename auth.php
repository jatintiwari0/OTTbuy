<?php

date_default_timezone_set('Asia/Kolkata');
define('DB_SERVER', 'localhost'); //localhost
define('DB_USERNAME', '#'); // db username
define('DB_PASSWORD', '#'); // db password
define('DB_DATABASE', '#'); // db name
define('PAYTM_UPI_ID', '#');//your paytm upi id
$conn = new mysqli(DB_SERVER, DB_USERNAME, DB_PASSWORD, DB_DATABASE);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
?>