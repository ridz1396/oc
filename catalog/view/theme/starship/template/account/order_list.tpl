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
      <div class="cards">
        <?php foreach ($orders as $order) { ?>
        <div class="card o-card">
          <div class="c-head">
            <div class="left">
              <span class="o-id"><span>Order# <?php echo $order['order_id']; ?></span></span>
              <span class="o-date">Date Added: <?php echo $order['date_added']; ?></span>
            </div>
            <div class="right"><span class="status delivered"><span class="material-icons">check_circle</span><span class="status"><?php echo $order['status']; ?></span></span></div>
          </div>
          <div class="c-body">
            <div class="img-n-title">
              <div class="img-wrap">
                <img src="https://www.startech.com.bd/image/cache/placeholder-228x228.png" alt="Md Nur Mohammad">
              </div>
              <div class="title">
                <h6 class="item-name">Intel Pentium G2030 Dual Core Processor</h6>
              </div>
            </div>
            <div class="amount">1,060৳</div>
            <div class="actions">
              <a href="<?php echo $order['href']; ?>" title="<?php echo $button_view; ?>" class="btn ac-btn"><?php echo $button_view; ?></a>
            </div>
          </div>
        </div>
        <?php } ?>
        <div class="text-center"><?php echo $pagination; ?></div>
      </div>
    </div>
    <?php echo $footer; ?>