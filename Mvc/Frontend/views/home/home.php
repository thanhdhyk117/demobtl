<div class="slider">
  <div class="container">
    <div class="row">
     <div class="banner-left">
       <?php require_once 'Mvc/frontend/controllers/CategoryController.php';
       $category_controller=new CategoryController();
       $category_controller->getCategoryProduct();
       ?>
     </div>
      <div class="banner-right">
        <div class="banner">
          <img src="Assets/frontend/images/winter.jpg" alt="">
        </div>
        <div class="menu-phai">
          <div>
            <a href="">
              <img alt="" src="Assets/frontend/images/summer.jpg">
            </a>
          </div>
          <div style="margin-top: 25px">
            <a href="">
              <img alt="" src="Assets/frontend/images/autumn.jpg">
            </a>
          </div>
        </div>
        <div style="clear: both"></div>
      </div>
      <div style="clear: both"></div>
    </div>
  </div>
</div>
<?php
    require_once "Mvc/frontend/controllers/ProductController.php";
    $product_controller=new ProductController();
    $product_controller->hotProduct();
?>
  <div class="container" style="padding-bottom: 30px">
    <div class="row ">
      <div class="col-lg-12 col-md-12  banner2">
        <div class="banner_trai">
          <a href=""><img src="Assets/frontend/images/sale.jpg" alt=""></a>
        </div>
        <div class="banner-center mx-auto">
          <div class="img1">
            <a href=""><img class="col-12" src="Assets/frontend/images/banner-top.jpg" alt=""></a>
          </div>
          <div class="img2">
            <a href=""><img class="col-12"  src="Assets/frontend/images/banner-bottom.jpg" alt=""></a>
          </div>
        </div>
        <div class="banner_phai">
          <a href=""><img src="Assets/frontend/images/sale.jpg" alt=""></a>
        </div>
      </div>
    </div>
  </div>
</div>
<?php require_once "Mvc/frontend/controllers/ProductController.php";
      $product_controller=new ProductController();
      $product_controller->NewsProduct();
?>
<?php require_once "Mvc/frontend/controllers/ProducerController.php";
      $product_controller=new ProducerController();
      $product_controller->hotProducer();
?>

