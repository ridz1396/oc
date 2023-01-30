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
      <div class="ac-title">
        <a href="<?php echo $back; ?>"><span class="material-icons">arrow_back</span></a>
        <h1><?php echo $heading_title; ?></h1>
      </div>
      <div class="ac-amount-summary">
        <span class="material-icons lg">stars</span>
        <div class="details">
          <p><?php echo $text_total; ?></p>
          <span class="amount"><?php echo $total; ?></span>
        </div>
      </div>
    </div>
    <?php echo $footer; ?>