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
<section class="info-page bg-bt-gray p-tb-15 ">
  <div class="container content ws-box m-auto">
    <?php echo $description; ?>
  </div>
</section>
<?php echo $footer; ?>