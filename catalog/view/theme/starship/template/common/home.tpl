<?php echo $header; ?>
<div class="bg-gray content p-tb-30">
  <div class="container">
    <div class="row">
      <div class="col-md-12 col-lg-9">
        <?php echo $column_left; ?>
      </div>
      <div class="col-md-12 col-lg-3">
        <div class="mdl-compare">
          <h4>Compare Products</h4>
          <p>Choose Two Products to Compare</p>
          <form method="post" action="common/compare/add" class="form-cmpr">
            <input type="hidden" name="product_id">
            <div class="cmpr-field">
              <i class="material-icons">search</i>
              <input class="cmpr-product" type="text" placeholder="Search and Select Product" />
              <input type="hidden" class="prod-id">
            </div>
            <div class="cmpr-field">
              <i class="material-icons">search</i>
              <input class="cmpr-product" type="text" placeholder="Search and Select Product" />
              <input type="hidden" class="prod-id">
            </div>
            <button class="btn st-outline">View Comparison</button>
          </form>
        </div>
        <?php echo $column_right; ?>
      </div>
    </div>
  </div>
  <div class="container">
    <div class="sliding_text_wrap">
      <marquee direction="left">
        <?php echo $comment; ?>
      </marquee>
    </div>
    <?php echo $content_top; ?>
  </div>
  <div class="container">
    <?php echo $content_bottom; ?>
  </div>
</div>
<script type="application/ld+json">
      {
        "@context": "http://schema.org",
        "@type": "WebSite",
        "url": "<?php echo $base; ?>",
        "potentialAction": {
          "@type": "SearchAction",
          "target": "<?php echo $base; ?>product/search?search={search_term_string}",
          "query-input": "required name=search_term_string"
        }
      }
    </script>
<?php echo $footer; ?>