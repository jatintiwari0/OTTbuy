/**
 * @author     Jatin Tiwari
 * @copyright  2024 Jatin Tiwari
 * @license    https://github.com/jatintiwari0/OTTbuy/blob/main/LICENSE  Apache License 2.0
 * @version    1.0
 * @link       https://github.com/jatintiwari0/OTTbuy
 */
<?php
session_start();
unset($_SESSION['auth']);
session_destroy();
header("Location: index.php");

?>
