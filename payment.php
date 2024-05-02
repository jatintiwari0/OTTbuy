* @author     Jatin Tiwari
* @copyright  2024 Jatin Tiwari
* @license    https://github.com/jatintiwari0/OTTbuy/blob/main/LICENSE  Apache License 2.0
* @version    1.0
* @link       https://github.com/jatintiwari0/OTTbuy

<?php
include("./auth.php");
$account = $_POST['account'];
$id = $_POST['service'];
if($account <= 0){
echo "minimum account buy requirements is 1";
return;	
}
$sql1 = $conn->query("SELECT * FROM categorys WHERE id='$id'");
if($sql1->num_rows <= 0){
	header('location: index.php');
return;		
}
$sql2 = $conn->query("SELECT * FROM sell where category_id='$id' and status='1'");
if($sql2->num_rows < $account){
 echo "Stock Not Available ";
return;		
}
$data2 = $sql1->fetch_assoc();

$amount = $data2['amount'] * $account;
$service = $_POST['service'];
$server = (strlen($service) == 2) ? $service : '0'.$service;
$upi_id = PAYTM_UPI_ID;
function generateRandomString($length = 10) {
    $result = '';
    for ($i = 0; $i < $length; $i++) {
        $result .= rand(0, 9);}
    return $result;}
$oid = "OID".generateRandomString().$server;
?>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.rawgit.com/davidshimjs/qrcodejs/gh-pages/qrcode.min.js"></script>
      <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
     
  <title>QR Payment- OTTbuy</title>
  <style>
    body {
      padding: 20px;
    }
    .pending {
    color: yellow;
    }
    .success {
     color: green;
    }
  </style>
</head>
<body>
  <div class="container">
    <div class="row justify-content-center">
      <div class="col-md-6">
        <div class="card shadow">
          <div class="card-body">
            <h5 class="card-title text-center" style="font-weight: bolder; color: blue;">Scan & Pay</h5>
            <img class="w-100 img-thumbnail" src="https://api.qrserver.com/v1/create-qr-code/?size=150x150&amp;data=<?php echo urlencode('upi://pay?pa='.$upi_id.'&pn=Merchant&tr='.$oid.'&am='.$amount.'&tn='.$oid.'&cu=INR')?>" alt="Card image cap">
            <p class="mt-3 mb-0" style="font-size: 25px; text-align: center; font-weight: bolder; color: red;">Amount : <?php echo $amount; ?> INR</p>  
            <p class="text-center" style="font-weight: bold;">Status : <strong id="status" class="pending">Pending</strong></p> 
            <p class="text-center" style="font-weight: bolder;">Scan the QR And make the payment after payment your download link will activate.</p>
            <center><a type="submit" id="myLink" class="btn btn-primary  mb-2 ">DOWNLOAD NOW</a></center>
          </div>
        </div>
      </div>
    </div>
  </div>
<script>
    $(document).ready(function() {
        function performAjax() {
            $.ajax({
                url: 'trackpayment.php?q=<?php echo $oid; ?>',
                type: 'GET',
                dataType: 'json',
                success: function(response) {
                    if (response.status == true) {
                        $('#status').html('Success').removeClass('warning').addClass('success');
                        $('#myLink').attr('href', 'download.php?id=' + response.id);
                        return;
                    } else {
                        setTimeout(() => {
                            performAjax();
                        }, 1500);
                    }
                },
                error: function() {
                    console.log('Error in AJAX request');
                }
            });
        }
        performAjax();
    });
</script>

</body>
</html>
