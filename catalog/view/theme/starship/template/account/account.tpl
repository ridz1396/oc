<?php echo $header; ?>
<section class="after-header p-tb-10">
      <div class="container">
        <ul class="breadcrumb">
        <?php foreach ($breadcrumbs as $breadcrumb) { ?>
        <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
        <?php } ?>
        </ul>
      </div>
    </section>
    <div class="container ac-layout">
      <?php echo $content_top; ?>
      <div class="ac-menus">
        <div class="ac-menu-item">
          <a href="<?php echo $order; ?>" class="ico-btn"><span class="material-icons">chrome_reader_mode</span><span><?php echo $text_order; ?></span></a>
        </div>
        <div class="ac-menu-item">
          <a href="<?php echo $edit; ?>" class="ico-btn"><span class="material-icons">person</span><span><?php echo $text_edit; ?></span></a>
        </div>
        <div class="ac-menu-item">
          <a href="<?php echo $password; ?>" class="ico-btn"><span class="material-icons">lock</span><span><?php echo $text_password; ?></span></a>
        </div>
        <div class="ac-menu-item">
          <a href="<?php echo $address; ?>" class="ico-btn"><span class="material-icons">book</span><span><?php echo $text_address; ?></span></a>
        </div>
        <div class="ac-menu-item">
          <a href="<?php echo $wishlist; ?>" class="ico-btn"><span class="material-icons">favorite_border</span><span><?php echo $text_wishlist; ?></span></a>
        </div>
        <div class="ac-menu-item">
          <a href="<?php echo $pc; ?>" class="ico-btn"><span class="material-icons">important_devices</span><span><?php echo $text_pc; ?></span></a>
        </div>
        <div class="ac-menu-item">
          <a href="<?php echo $reward; ?>" class="ico-btn"><span class="material-icons">stars</span><span><?php echo $text_reward; ?></span></a>
        </div>
        <div class="ac-menu-item">
          <a href="<?php echo $transaction; ?>" class="ico-btn"><span class="material-icons">account_balance_wallet</span><span><?php echo $text_transaction; ?></span></a>
        </div>
        <div class="ac-menu-item h-desk">
          <a href="<?php echo $logout; ?>" class="ico-btn"><span class="material-icons">input</span><span><?php echo $text_logout; ?></span></a>
        </div>
      </div>
    </div>
<?php echo $footer; ?>
