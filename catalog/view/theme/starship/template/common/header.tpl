<!DOCTYPE html>
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <title><?php echo $title; ?></title>
    <base href="<?php echo $base; ?>" />
    <?php if ($description) { ?>
    <meta name="description" content="<?php echo $description; ?>" />
    <?php } ?>
    <?php if ($keywords) { ?>
    <meta name="keywords" content= "<?php echo $keywords; ?>" />
    <?php } ?>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <?php if ($icon) { ?>
    <link href="<?php echo $icon; ?>" rel="icon" />
    <?php } ?>
    <?php foreach ($links as $link) { ?>
    <link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
    <?php } ?>
    <link rel="preload" href="catalog/view/theme/starship/fonts/MaterialIcons-Regular.woff2" as="font" crossorigin>
    <link href="catalog/view/theme/starship/stylesheet/stylesheet.min.19.css" rel="stylesheet">
    <script type="text/javascript">var app={mgs_type: "popup", enablePopup: 1, popupDuration: 6, onReady:function(d,a,e,f,t){a=Array.isArray(a)?a:[a];t=t||2E3;for(var g=!0,b=d,c=0;c<a.length;c++){var h=a[c];if("undefined"==typeof b[h]){g=!1;break}b=b[h]}g?e():f&&setTimeout(function(){app.onReady(d,a,e,--f)},t)}};</script>
    <script async src="catalog/view/theme/starship/javascript/site.min.19.js" type="text/javascript"></script>
    <?php foreach ($scripts as $script) { ?>
    <script async src="<?php echo $script; ?>" type="text/javascript"></script>
    <?php } ?>
    <?php echo $google_analytics; ?>
  </head>
  <body class="<?php echo $class; ?>">
    <header id="header">
      <div class="top">
        <div class="container">
          <div class="ht-item logo">
            <div class="mbl-nav-top h-desk">
              <div id="nav-toggler">
                <span></span>
                <span></span>
                <span></span>
              </div>
            </div>
            <?php if ($logo) { ?>
                <a class="brand" href="<?php echo $home; ?>"><img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" width="144" height="164" alt="<?php echo $name; ?>"></a>
            <?php } else { ?>
                <h1><a href="<?php echo $home; ?>"><?php echo $name; ?></a></h1>
            <?php } ?>
            <div class="mbl-right h-desk">
              <div class="ac search-toggler"><i class="material-icons">search</i></div>
              <div class="ac mc-toggler"><i class="material-icons">shopping_basket</i><span class="counter" data-count="0">0</span></div>
            </div>
          </div>
          <?php echo $search; ?>
          <div class="ht-item q-actions">
            <a href="<?php echo $base; ?>information/offer" class="ac h-offer-icon">
              <div class="ic"><i class="material-icons">card_giftcard</i></div>
              <div class="ac-content">
                <h5>Offers</h5>
                <p>Latest Offers</p>
              </div>
            </a>
            <a href="<?php echo $base; ?>deals" class="ac h-offer-icon">
              <div class="ic"><i class="material-icons blink">flash_on</i></div>
              <div class="ac-content">
                <h5>Gadget Fest</h5>
                <p>Special Deals</p>
              </div>
            </a>
            <a href="<?php echo $base; ?>tool/pc_builder" class="ac h-desk build-pc">
              <div class="ic"><i class="material-icons">important_devices</i></div>
              <div class="ac-content">
                <h5 class="text">PC Builder</h5>
              </div>
            </a>
            <div class="ac cmpr-toggler h-desk">
              <div class="ic"><i class="material-icons">library_add</i></div>
              <div class="ac-content">
                <h5 class="text">Compare (0)</h5>
              </div>
            </div>
            <div class="ac">
              <a class="ic" href="<?php if($logged) { echo $account; } else { echo $login; } ?>"><i class="material-icons">person</i></a>
              <div class="ac-content">
                <a href="<?php if($logged) { echo $account; } else { echo $login; } ?>">
                  <h5>Account</h5>
                </a>
                <p>
                <?php if ($logged) { ?>
                    <a href="<?php echo $account; ?>">Profile</a> or <a href="<?php echo $logout; ?>"><?php echo $text_logout; ?></a>
                <?php } else { ?>
                    <a href="<?php echo $register; ?>"><?php echo $text_register; ?></a> or <a href="<?php echo $login; ?>"><?php echo $text_login; ?></a></span>
                <?php } ?>
                </p>
              </div>
            </div>
            <div class="ac build-pc m-hide">
              <a class="btn" href="<?php echo $base; ?>tool/pc_builder">PC Builder</a>
            </div>
          </div>
        </div>
      </div>
      <nav class="navbar" id="main-nav">
        <div class="container">
          <ul class="navbar-nav">
            <?php foreach ($categories as $category) { ?>
            <?php if ($category['children']) { ?>
            <li class="nav-item has-child c-<?php echo $category['column']; ?>">
              <a class="nav-link" href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a>
              <ul class="drop-down drop-menu-1">
                <?php foreach ($category['children'] as $child) { ?>
                    <?php if($child['children']) { ?>
                    <li class="nav-item has-child<?php if($child['column'] > 1) { echo " multi-col"; } ?>">
                      <a class="nav-link" href="<?php echo $child['href']; ?>"><?php echo $child['name']; ?></a>
                      <?php if($child['column'] > 1) { ?>
                        <div class="drop-down drop-menu-2">
                          <?php foreach (array_chunk($child['children'], ceil(count($child['children']) / $child['column'])) as $grandchildren) { ?>
                          <ul>
                            <?php foreach ($grandchildren as $grandchild) { ?>
                            <li><a href="<?php echo $grandchild['href']; ?>"><?php echo $grandchild['name']; ?></a></li>
                            <?php } ?>
                          </ul>
                          <?php } ?>
                        </div>
                      <?php } else { ?>
                        <ul class="drop-down drop-menu-2">
                          <?php foreach ($child['children'] as $grandchild) { ?>
                          <li class="nav-item"><a class="nav-link" href="<?php echo $grandchild['href']; ?>"><?php echo $grandchild['name']; ?></a></li>
                          <?php } ?>
                        </ul>
                      <?php } ?>
                    </li>
                    <?php } else { ?>
                    <li class="nav-item"><a class="nav-link" href="<?php echo $child['href']; ?>"><?php echo $child['name']; ?></a></li>
                    <?php } ?>
                <?php } ?>
                <li><a href="<?php echo $category['href']; ?>" class="see-all"><?php echo $text_all; ?> <?php echo $category['name']; ?></a></li>
              </ul>
            </li>
            <?php } else { ?>
              <li class="nav-item">
                <a class="nav-link" href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a>
              </li>
            <?php } ?>
            <?php } ?>
          </ul>
        </div>
      </nav>
    </header>
    <div class="f-btn mc-toggler" id="cart">
      <i class="material-icons">shopping_basket</i>
      <div class="label">Cart</div>
      <span class="counter">0</span>
    </div>
    <div class="f-btn cmpr-toggler" id="cmpr-btn">
      <i class="material-icons">library_add</i>
      <div class="label">Compare</div>
      <span class="counter">0</span>
    </div>
    <div class="drawer cmpr-panel " id="cmpr-panel">
      <div class="title">
        <p>Compare Product</p>
        <span class="cmpr-toggler"><i class="material-icons">close</i></span>
      </div>
      <div class="content">
        <div class="loader"></div>
      </div>
      <div class="footer btn-wrap"></div>
    </div>
    <div class="drawer m-cart" id="m-cart">
      <div class="title">
        <p>YOUR CART</p>
        <span class="mc-toggler"><i class="material-icons">close</i></span>
      </div>
      <div class="content">
        <div class="loader"></div>
      </div>
      <div class="footer"></div>
    </div>