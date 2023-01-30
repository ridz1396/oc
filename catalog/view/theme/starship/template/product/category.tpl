<?php echo $header; ?>
<section class="after-header p-tb-10">
  <div class="container">
    <ul class="breadcrumb" itemscope itemtype="http://schema.org/BreadcrumbList">
      <?php $count = 0; foreach ($breadcrumbs as $breadcrumb) { ?>
        <?php if($count === 0) { ?>
            <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
        <?php } else { ?>
            <li itemprop="itemListElement" itemscope itemtype="http://schema.org/ListItem">
                <a itemtype="http://schema.org/Thing" itemprop="item" href="<?php echo $breadcrumb['href']; ?>"><span itemprop="name"><?php echo $breadcrumb['text']; ?></span></a>
                <meta itemprop="position" content="<?php echo $count; ?>" />
            </li>
        <?php } ?>
      <?php $count++; } ?>
    </ul>
    <div class="child-list">
			<?php if ($categories) { ?>
			<?php foreach ($categories as $category) { ?>
      <a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a>
			<?php } ?>
			<?php } ?>
    </div>
  </div>
</section>
<section class="p-item-page bg-bt-gray p-tb-15">
  <div class="container">
    <div class="row">
      <column id="column-left" class="col-sm-3">
			<span class="lc-close"><i class="material-icons" aria-hidden="true">close</i></span>
			<?php echo $column_left; ?>
      </column>
      <div id="content" class="col-xs-12 col-md-9 product-listing">
        <div class="top-bar ws-box">
          <div class="row">
            <div class="col-sm-4 col-xs-2 actions">
              <button class="tool-btn" id="lc-toggle"><i class="material-icons">filter_list</i> Filter</button>
              <h6 class="page-heading m-hide"><?php echo $heading_title; ?></h6>
            </div>
            <div class="col-sm-8 col-xs-10 show-sort">
              <div class="form-group rs-none">
                <label><?php echo $text_limit; ?></label>
                <div class="custom-select">
                  <select id="input-limit">
									<?php foreach ($limits as $limits) { ?>
									<?php if ($limits['value'] == $limit) { ?>
									<option value="<?php echo $limits['href']; ?>" selected="selected"><?php echo $limits['text']; ?></option>
									<?php } else { ?>
									<option value="<?php echo $limits['href']; ?>"><?php echo $limits['text']; ?></option>
									<?php } ?>
									<?php } ?>
                  </select>
                </div>
              </div>
              <div class="form-group">
                <label><?php echo $text_sort; ?></label>
                <div class="custom-select">
                  <select id="input-sort">
									<?php foreach ($sorts as $sorts) { ?>
									<?php if ($sorts['value'] == $sort . '-' . $order) { ?>
									<option value="<?php echo $sorts['value']; ?>" selected="selected"><?php echo $sorts['text']; ?></option>
									<?php } else { ?>
									<option value="<?php echo $sorts['value']; ?>"><?php echo $sorts['text']; ?></option>
									<?php } ?>
									<?php } ?>
                  </select>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="main-content p-items-wrap">
					<?php if ($products) { ?>
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
              <div class="p-item-img"><a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" width="228" height="228"></a></div>
              <div class="p-item-details">
                <h4 class="p-item-name"> <a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></h4>
                <div class="short-description">
									<?php if($product['short_description']) { ?>
									<ul>
										<?php foreach($product['short_description'] as $short_description) { ?>
										<li><?php echo $short_description; ?></li>
										<?php } ?>
									</ul>
									<?php } ?>
                </div>
                <?php if($product['out_of_stock']) { ?>
                <div class="p-item-price">
                  <span>TBA</span>
                </div>
								<?php } else if ($product['price']) { ?>
                <div class="p-item-price">
									<?php if (!$product['special']) { ?>
									<span><?php echo $product['price']; ?></span>
									<?php } else { ?>
									<span class="price-new"><?php echo $product['special']; ?></span> <span class="price-old"><?php echo $product['price']; ?></span>
									<?php } ?>
                </div>
								<?php } ?>
                <div class="actions">
                  <?php if($product['out_of_stock']) { ?>
                  <span class="st-btn stock-status"><?php echo $product['stock']; ?></span>
                  <?php } else { ?> 
                  <span class="st-btn btn-add-cart" type="button" onclick="cart.add('<?php echo $product['product_id']; ?>', '<?php echo $product['minimum']; ?>');"><i class="material-icons">shopping_cart</i> <?php echo $button_cart; ?></span>
                  <?php } ?>
                  <span class="st-btn btn-compare" onclick="compare.add('<?php echo $product['product_id']; ?>');"><i class="material-icons">library_add</i><?php echo $button_compare; ?></span>
                </div>
              </div>
            </div>
          </div>
					<?php } ?>
					<?php } ?>
        </div>
        <div class="bottom-bar">
          <div class="row">
            <div class="col-md-6 col-sm-12">
							<?php echo $pagination; ?>
            </div>
            <div class="col-md-6 rs-none text-right">
              <p><?php echo $results; ?></p>
            </div>
          </div>
        </div>
        <div class="category-description p-15 ws-box">
					<?php if ($description) { ?>
					<?php echo $description; ?>
					<?php } ?>
        </div>
      </div>
    </div>
  </div>
</section>
<section class="content-bottom">
  <div class="container">
		<?php echo $content_bottom; ?>
	</div>
</section>
<?php echo $footer; ?>