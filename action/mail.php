<?php
session_start();
require_once '../DB/db.php';
if(isset($_POST['order'])){

  $user_name = $_POST['username'];
  $phone = $_POST['phone'];
  $email = $_POST['email'];
    
    $connect->query("INSERT INTO `order` (`user_name`,`phone`,`email`) VALUES ('$user_name','$phone','$email')");

    $lastId = $connect->query("SELECT MAX(id) FROM `order` WHERE email='$email'");
    $lastId = $lastId->fetch(PDO::FETCH_ASSOC);
    $lastId = $lastId['Max(id)'];
    
    $message = htmlspecialchars("Ваш заказ по номером $lastId принят");
    $message .= "<h2>Состав заказа</h2>";
    foreach ($_SESSION['cart'] as $product) {
      $message .= htmlspecialchars("{$product['rus_name']} в колличестве {$product['quantity']}");
    }
       $message .= htmlspecialchars("Cумма заказа {$_SESSION['totalPrice']}");
       $headers  = 'MIME-Version: 1.0' . "\r\n";
       $headers .= 'Content-type: text/html; charser=utf8' . "\r\n";
       $subject = htmlspecialchars("Ваш заказ принят $lastId");
       mail($email,$subject,$message,$headers);

       unset($_SESSION['totalQuantity']);
       unset($_SESSION['totalPrice']);
       unset($_SESSION['cart']);
       $_SESSION['order'] = $lastId;
       header ("Location: ".$_SERVER['HTTP_REFERER']);
} 
?>


