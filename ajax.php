* @author     Jatin Tiwari
* @copyright  2024 Jatin Tiwari
* @license    https://github.com/jatintiwari0/OTTbuy/blob/main/LICENSE  Apache License 2.0
* @version    1.0
* @link       https://github.com/jatintiwari0/OTTbuy
<?php 
include("./auth.php");
if(isset($_GET['id'])){
$id = $_GET['id'];
$sql = $conn->query("SELECT * FROM categorys WHERE id='$id'");
if($sql->num_rows > 0){
$data = $sql->fetch_assoc();
echo $data['total_stock'];
} else{
echo "0";
}
}else{
echo "0";
}
?>