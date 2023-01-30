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
      <div class="ac-title-help-text"><?php echo $heading_description; ?></div>
      <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" >
        <div class="form-group required">
          <label for="input-password"><?php echo $entry_password; ?></label>
          <input type="password" name="password" value="<?php echo $password; ?>" placeholder="<?php echo $entry_password; ?>" id="input-password" class="form-control" />
          <?php if ($error_password) { ?>
          <div class="text-danger"><?php echo $error_password; ?></div>
          <?php } ?>
        </div>
        <div class="form-group required">
          <label for="input-confirm"><?php echo $entry_confirm; ?></label>
          <input type="password" name="confirm" value="<?php echo $confirm; ?>" placeholder="<?php echo $entry_confirm; ?>" id="input-confirm" class="form-control" />
          <?php if ($error_confirm) { ?>
          <div class="text-danger"><?php echo $error_confirm; ?></div>
          <?php } ?>
        </div>
        <button type="submit" class="btn btn-primary" ><?php echo $button_continue; ?></button>
      </form>
    </div>
    <?php echo $footer; ?>