<div class="ads loaded">
  <?php foreach ($banners as $banner) { ?>
    <?php if ($banner['link']) { ?>
  <a href="<?php echo $banner['link']; ?>">
    <img
      src="<?php echo $banner['image']; ?>"
      alt="<?php echo $banner['title']; ?>" width="300" height="193">
  </a>
  <?php } else { ?>
    <img
      src="<?php echo $banner['image']; ?>"
      alt="<?php echo $banner['title']; ?>" width="300" height="193">
  <?php } ?>
  <?php } ?>
</div>