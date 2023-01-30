<?php echo $header; ?>
<section class="after-header">
  <div class="container">
    <ul class="breadcrumb" itemscope itemtype="http://schema.org/BreadcrumbList">
      <?php $count = 0; foreach ($breadcrumbs as $breadcrumb) { ?>
      <?php if($count === 0) { ?>
      <li><a href="https://www.startech.com.bd/"><i class="material-icons" title="Home">home</i></a></li>
      <?php } else { ?>
      <li itemprop="itemListElement" itemscope itemtype="http://schema.org/ListItem">
        <a itemtype="http://schema.org/Thing" itemprop="item" href="<?php echo $breadcrumb['href']; ?>">
        <span itemprop="name">
        <?php echo $breadcrumb['text']; ?>
        </span>
        </a>
        <meta itemprop="position" content="<?php echo $count; ?>" />
      </li>
      <?php } ?>
      <?php $count++; } ?>
    </ul>
  </div>
</section>
<div class="product-details content" itemscope itemtype="http://schema.org/Product">
  <meta itemprop="sku" content="<?php echo $product_id; ?>">
  <div class="product-details-summary">
    <div class="container">
      <div class="pd-q-actions">
        <div class="share-on">
          <span class="share"><?php echo $text_share; ?></span>
          <span class="icon-sprite share-ico fb-dark" data-type="facebook"></span>
          <span class="icon-sprite share-ico pinterest-dark" data-type="pinterest"></span>
        </div>
        <div class="options">
          <span class="add-list" onclick="wishlist.add('<?php echo $product_id; ?>');"><i class="material-icons">bookmark_border</i>
          <?php echo $text_save; ?></span>
          <span class="add-compare" onclick="compare.add('<?php echo $product_id; ?>');"><i class="material-icons">library_add</i> <?php echo $text_compare; ?></span>
        </div>
      </div>
      <div class="basic row">
        <div class="col-md-5 left">
          <div class="images product-images">
            <?php if ($thumb || $images) { ?>
            <?php if ($thumb) { ?>
            <div class="product-img-holder">
              <a class="thumbnail"
                href="<?php echo $popup; ?>"
                title="<?php echo $heading_title; ?>"><img class="main-img"
                src="<?php echo $thumb; ?>"
                title="<?php echo $heading_title; ?>"
                alt="<?php echo $heading_title; ?>" width="500" height="500" /></a>
              <meta itemprop="image"
                content="<?php echo $thumb; ?>" />
            </div>
            <?php } ?>
            <?php if ($images) { ?>
            <ul class="thumbnails">
              <?php foreach ($images as $image) { ?>
              <li><a class="thumbnail"
                href="<?php echo $image['popup']; ?>"
                title="<?php echo $heading_title; ?>"><img
                src="<?php echo $image['thumb']; ?>"
                title="<?php echo $heading_title; ?>"
                alt="<?php echo $heading_title; ?>" width="74" height="74" /></a></li>
              <meta itemprop="image"
                content="<?php echo $image['popup']; ?>" />
              <?php } ?>
            </ul>
            <?php } ?>
            <?php } ?>
          </div>
        </div>
        <div class="col-md-7 right" id="product">
          <div class="pd-summary">
            <div class="product-short-info">
              <h1 itemprop="name" class="product-name"><?php echo $heading_title; ?></h1>
              <table class="product-info-table">
                <?php if ($price) { ?>
                <tr class="product-info-group">
                  <td class="product-info-label"><?php echo $text_price; ?></td>
                  <?php if (!$special) { ?>
                  <td class="product-info-data product-price"><?php echo $price; ?></td>
                  <?php } else { ?>
                  <td class="product-info-data product-price"><ins><?php echo $special; ?></ins><del><?php echo $price; ?></del></td>
                  <?php } ?>
                </tr>
                <?php } else { ?>
                  <tr class="product-info-group">
                    <td class="product-info-label"><?php echo $text_price; ?></td>
                    <td class="product-info-data product-price"><?php echo $text_no_price; ?></td>
                  </tr>
                  <?php } ?>
                <?php if ($regular_price) { ?>
                <tr class="product-info-group">
                  <td class="product-info-label"><?php echo $text_regular_price; ?></td>
                  <td class="product-info-data product-regular-price"><?php echo $regular_price; ?></td>
                </tr>
                <?php } ?>
                <tr class="product-info-group">
                  <td class="product-info-label"><?php echo $text_stock; ?></td>
                  <td class="product-info-data product-status"><?php echo $stock; ?></td>
                </tr>
                <tr class="product-info-group">
                  <td class="product-info-label"><?php echo $text_product_code; ?></td>
                  <td class="product-info-data product-code"><?php echo $product_id; ?></td>
                </tr>
                <?php if ($manufacturer) { ?>
                <tr class="product-info-group" itemprop="brand" itemtype="http://schema.org/Thing" itemscope>
                  <td class="product-info-label"><?php echo $text_manufacturer; ?></td>
                  <td class="product-info-data product-brand" itemprop="name"><?php echo $manufacturer; ?></td>
                </tr>
                <?php } ?>
              </table>
            </div>
            <div class="short-description" itemprop="offers" itemscope itemtype="http://schema.org/Offer">
              <?php if($stock_schema_url) { ?>
              <link itemprop="availability" href="<?php echo $stock_schema_url; ?>" />
              <?php } ?>
              <link itemprop="itemCondition" href="http://schema.org/NewCondition">
              <meta itemprop="priceCurrency" content="<?php echo $currency; ?>" />
              <meta itemprop="price" content="<?php echo $price_raw; ?>" />
              <h2><?php echo $text_short_description; ?></h2>
              <ul>
                <li><?php echo $text_model; ?> <?php echo $model; ?></li>
                <?php foreach($short_descriptions as $short_description) { ?>
                <li><?php echo $short_description; ?></li>
                <?php } ?>
                <li class="view-more" data-area="specification"><?php echo $text_view_more; ?></li>
              </ul>
            </div>
            <div class="stickers">
              <?php if ($reward) { ?>
              <div class="sticker reward">
                <span class="material-icons">stars</span>
                <span class="points">180</span>
                <span class="text">Star Points</span>
              </div>
              <?php } ?>
            </div>
            <?php if($price) { ?>
            <h2>Payment Options</h2>
            <div class="product-price-options">
              <label class="p-wrap cash-payment active">
                <input type="radio" name="enable_emi" checked="" value="0">
                <span class="price"><?php if($special) { echo $special; } else { echo $price; } ?></span>
                <div class="p-tag">Cash Discount Price</div>
                <div class="p-tag fade">Online / Cash Payment</div>
              </label>
            </div>
            <?php } ?>
            <div class="cart-option">
              <?php if($out_of_stock) { ?>
                <input type="hidden" name="product_id" value="<?php echo $product_id; ?>">
                <span class="stock-status"><?php echo $stock; ?></span>
                <?php if($stock_schema_url === "http://schema.org/PreOrder") { ?>
                <button class="btn submit-btn" data-loading-text="Loading..." onclick="stock_request.add('7972')">Place Pre Order</button>
                <?php } ?>
              <?php } else { ?>
                <label class="quantity">
                <span class="ctl"><i class="material-icons">remove</i></span>
                <span class="qty"><input type="text" name="quantity" id="input-quantity" value="<?php echo $minimum; ?>" size="2"></span>
                <span class="ctl increment"><i class="material-icons">add</i></span>
                <input type="hidden" name="product_id" value="<?php echo $product_id; ?>" />
                </label>
                <button id="button-cart" class="btn submit-btn" data-loading-text="<?php echo $text_loading; ?>"><?php echo $button_cart; ?></button>
              <?php } ?>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <div class="pd-full">
    <div class="container">
      <div class="row">
        <div class="col-lg-9 col-md-12">
          <div class="navs">
            <ul class="nav">
              <?php if($attribute_groups) { ?>
              <li data-area="specification"><?php echo $tab_attribute; ?></li>
              <?php } ?>
              <?php if($description) { ?>
              <li data-area="description"><?php echo $tab_description; ?></li>
              <?php } ?>
              <!-- <li class="hidden-xs" data-area="ask-question">Questions (0)</li> -->
              <li data-area="write-review"><?php echo $tab_review; ?></li>
            </ul>
          </div>
          <?php if($attribute_groups) { ?>
          <section class="specification-tab m-tb-10" id="specification">
            <div class="section-head">
              <h2><?php echo $tab_attribute; ?></h2>
            </div>
            <table class="data-table flex-table" cellpadding="0" cellspacing="0">
              <colgroup>
                <col class="name" />
                <col class="value" />
              </colgroup>
              <?php foreach ($attribute_groups as $attribute_group) { ?>
              <thead>
                <tr>
                  <td class="heading-row" colspan="3"><?php echo $attribute_group['name']; ?></td>
                </tr>
              </thead>
              <tbody>
                <?php foreach ($attribute_group['attribute'] as $attribute) { ?>
                <tr>
                  <td class="name"><?php echo $attribute['name']; ?></td>
                  <td class="value"><?php echo $attribute['text']; ?></td>
                </tr>
                <?php } ?>
              </tbody>
              <?php } ?>
            </table>
          </section>
          <?php } ?>
          <?php if($description) { ?>
          <section class="description bg-white m-tb-15" id="description">
            <div class="section-head">
              <h2><?php echo $tab_description; ?></h2>
            </div>
            <div class="full-description" itemprop="description">
              <?php echo $description; ?>
            </div>
          </section>
          <?php } ?>
          <?php if($title_latest_price) { ?>
          <section class="latest-price bg-white m-tb-15" id="latest-price">
            <div class="section-head">
              <h2><?php echo $title_latest_price; ?></h2>
            </div>
            <p><?php echo $description_latest_price; ?></p>
          </section>
          <?php } ?>
          <!-- <section class="ask-question q-n-r-section bg-white m-tb-15" id="ask-question">
            <div class="section-head">
              <div class="title-n-action">
                <h2>Questions (0)</h2>
                <p class="section-blurb">Have question about this product? Get specific details about this product from
                  expert.
                </p>
              </div>
              <div class="q-action">
                <a href="https://www.startech.com.bd/account/question?product_id=13210" class="btn st-outline">Ask
                Question</a>
              </div>
            </div>
            <div id="question">
              <div class="empty-content">
                <span class="icon material-icons">textsms</span>
                <div class="empty-text">There are no questions asked yet. Be the first one to ask a question.</div>
              </div>
            </div>
          </section> -->
          <section class="review  q-n-r-section bg-white m-tb-15" id="write-review">
            <div class="section-head">
              <div class="title-n-action">
                <h2>Reviews (0)</h2>
                <p class="section-blurb">Get specific details about this product from customers who own it.</p>
                <div class="average-rating">
                </div>
              </div>
              <div class="q-action">
                <a href="https://www.startech.com.bd/account/review?product_id=13210" class="btn st-outline">Write a
                Review</a>
              </div>
            </div>
            <div id="review">
              <div class="empty-content">
                <span class="icon material-icons">assignment</span>
                <div class="empty-text">This product has no reviews yet. Be the first one to write a review.</div>
              </div>
            </div>
          </section>
        </div>
        <div class="col-lg-3 col-md-12 c-left">
          <section class="related-product-list">
            <h3>Related Product</h3>
            <?php if ($products) { ?>
            <?php foreach ($products as $product) { ?>
            <div class="p-s-item">
              <div class="image-holder">
                <a href="<?php echo $product['href']; ?>"><img
                  src="<?php echo $product['thumb']; ?>"
                  alt="<?php echo $product['name']; ?>" width="80" height="80"></a>
              </div>
              <div class="caption">
                <h4 class="product-name">
                  <a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a>
                </h4>
                <div class="p-item-price price">
                <?php if (!$product['special']) { ?>
                  <span><?php echo $product['price']; ?></span>
                <?php } else { ?>
                <span class="price-new"><?php echo $product['special']; ?></span> <span class="price-old"><?php echo $product['price']; ?></span>
                <?php } ?>
                </div>
                <div class="actions">
                  <span class="btn-compare" onclick="compare.add('<?php echo $product['product_id'] ?>');"><i class="material-icons">library_add</i>Add
                  to Compare</span>
                </div>
              </div>
            </div>
            <?php } } ?>
          </section>
          <section class="related-product-list">
            <h3>Recently Viewed</h3>
          </section>
        </div>
      </div>
    </div>
  </div>
</div>
<?php echo $footer; ?>
<script>
  var product_id = <?php echo $product_id; ?>;
  fbq('track', 'ViewContent', {
    content_ids: ['<?php echo $product_id; ?>'],
    content_type: 'product',
    value: 16500.0000,
    currency: 'BDT'
  });
</script>