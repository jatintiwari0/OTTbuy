<?php

date_default_timezone_set('Asia/Kolkata');
define('DB_SERVER', '135.181.161.167'); //localhost
define('DB_USERNAME', 'byiribpb_ott'); // db username
define('DB_PASSWORD', 'byiribpb_ott'); // db password
define('DB_DATABASE', 'byiribpb_ott'); // db name
define('PAYTM_UPI_ID', 'paytmqr1rudv8w05q@paytm');//your paytm upi id
$conn = new mysqli(DB_SERVER, DB_USERNAME, DB_PASSWORD, DB_DATABASE);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
?>
