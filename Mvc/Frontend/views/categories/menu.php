
  <div class="menu-trai">
    <ul>
      <?php if (!empty($categories)):
        foreach ($categories as $category):
          $category_id = $category["id"];
          $category_name = $category["name"];
          $category_slug = Helper::getSlug($category_name);
          $category_link = "danh-sach-san-pham/$category_slug/$category_id"
          ?>
          <li class="menu-cha">
            <a href="<?php echo $category_link; ?>">
              <?php if (!empty($category["avatar"])): ?>
                <img src="Assets//uploads/categories/<?php echo $category["avatar"]; ?>" alt="">
              <?php endif; ?>
              <span><?php echo $category["name"]; ?></span>
              <i style="line-height: 33px;" class="fa fa-chevron-right"></i>
              <div style="clear: both"></div>
            </a>
          </li>
        <?php endforeach; else: ?>
        <li class="menu-cha">
          <a href="">
            Không có danh mục sản phẩm nào !!!
          </a>
        </li>
      <?php endif; ?>
    </ul>
  </div>
