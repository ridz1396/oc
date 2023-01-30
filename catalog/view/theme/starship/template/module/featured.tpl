<!-- <h3><?php echo $heading_title; ?></h3>
<div class="row">
  <?php foreach ($products as $product) { ?>
  <div class="product-layout col-lg-3 col-md-3 col-sm-6 col-xs-12">
    <div class="product-thumb transition">
      <div class="image"><a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-responsive" /></a></div>
      <div class="caption">
        <h4><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></h4>
        <p><?php echo $product['description']; ?></p>
        <?php if ($product['rating']) { ?>
        <div class="rating">
          <?php for ($i = 1; $i <= 5; $i++) { ?>
          <?php if ($product['rating'] < $i) { ?>
          <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
          <?php } else { ?>
          <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
          <?php } ?>
          <?php } ?>
        </div>
        <?php } ?>
        <?php if ($product['price']) { ?>
        <p class="price">
          <?php if (!$product['special']) { ?>
          <?php echo $product['price']; ?>
          <?php } else { ?>
          <span class="price-new"><?php echo $product['special']; ?></span> <span class="price-old"><?php echo $product['price']; ?></span>
          <?php } ?>
          <?php if ($product['tax']) { ?>
          <span class="price-tax"><?php echo $text_tax; ?> <?php echo $product['tax']; ?></span>
          <?php } ?>
        </p>
        <?php } ?>
      </div>
      <div class="button-group">
        <button type="button" onclick="cart.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-shopping-cart"></i> <span class="hidden-xs hidden-sm hidden-md"><?php echo $button_cart; ?></span></button>
        <button type="button" data-toggle="tooltip" title="<?php echo $button_wishlist; ?>" onclick="wishlist.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-heart"></i></button>
        <button type="button" data-toggle="tooltip" title="<?php echo $button_compare; ?>" onclick="compare.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-exchange"></i></button>
      </div>
    </div>
  </div>
  <?php } ?>
</div>
 -->



<div class="m-product m-home" id="module-481">
      <h2 class="m-header"><?php echo $heading_title; ?></h2>
      <p class="m-blurb"><?php echo $heading_description; ?></p>
      <div class="p-items-wrap">
        <?php foreach ($products as $product) { ?>
        <div class="p-item">
          <div class="p-item-inner">
            <?php if($product['marks']) { ?>
            <div class="marks">
              <?php foreach($product['marks'] as $mark) { ?>
                <span class="mark"><?php echo $mark; ?></span>
              <?php } ?>
            </div>
            <?php } ?>
            <div class="p-item-img"> 
              <a href="<?php echo $product['href']; ?>">
                <img
                  src="<?php echo $product['thumb']; ?>"
                  alt="<?php echo $product['name']; ?>" width="228" height="228" />
              </a>
            </div>
            <div class="p-item-details">
              <h4 class="p-item-name"> <a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></h4>
              <?php if ($product['price']) { ?>
              <div class="p-item-price">
                <?php if (!$product['special']) { ?>
                <?php echo $product['price']; ?>
                <?php } else { ?>
                <span class="price-new"><?php echo $product['special']; ?></span> <span class="price-old"><?php echo $product['price']; ?></span>
                <?php } ?>
              </div>
              <?php } ?>
            </div>
          </div>
        </div>
        <?php } ?>
      </div>
    </div>