<?php
require_once 'DB/db.php';
if(isset($_GET['cat'])) {
    $currentCat = $_GET['cat'];
    $products = $connect->query("SELECT * FROM products WHERE cat='$currentCat'");
    $products = $products->fetchAll(PDO::FETCH_ASSOC);
    if(!$products) {
        header("Location: index.php");
    }
} else {
    $products = $connect->query("SELECT * FROM products");
    $products = $products->fetchAll(PDO::FETCH_ASSOC);
}
require_once 'parts/header.php';
?>


<div class="main">
  <?php foreach ($products as $product){ ?>
    <div class="card">
      <a href="product.php?product=<?php echo $product['title']; ?>">
        <img class="img-index" src="img/<?php echo $product['img']; ?>" alt="<?php echo $product['rus_name']; ?>">
      </a>
      <div class="label"><?php echo $product['rus_name']; ?> (<?php echo $product['price']; ?> рублей)</div>
      <form action="action/add.php" method="post">
        <input type="hidden" name="id" value="<?php echo $product['id']; ?>">
        <?php require 'action/add-form.php'; ?>
      </form>
    </div>
  <?php } ?>
</div>
<?php
require_once 'parts/footer.php';
?>