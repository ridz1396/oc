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
<div class="container ac-layout before-login">
  <div class="panel m-auto">
    <?php if ($error_warning) { ?>
    <div class="alert alert-danger"><i class="material-icons">error</i> <?php echo $error_warning; ?></div>
    <?php } ?>
    <?php if ($success) { ?>
    <div class="alert alert-success"><i class="material-icons">success</i> <?php echo $success; ?></div>
    <?php } ?>
    <div class="p-head">
      <h2 class="text-center">Account Login</h2>
    </div>
    <div class="p-body">
      <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
        <?php if ($redirect) { ?>
        <input type="hidden" name="redirect" value="<?php echo $redirect; ?>">
        <?php } ?>
        <div class="form-group">
          <label class="control-label" for="input-username"><?php echo $entry_username; ?></label>
          <input type="text" name="username" value="<?php echo $username; ?>" placeholder="<?php echo $entry_username; ?>" id="input-username" class="form-control" />
        </div>
        <div class="form-group">
          <label class="control-label" for="input-password"><?php echo $entry_password; ?></label>
          <a class="forgot-password" href="<?php echo $forgotten; ?>"><?php echo $text_forgotten; ?></a>
          <input type="password" name="password" value="<?php echo $password; ?>" placeholder="<?php echo $entry_password; ?>" id="input-password" class="form-control" />
        </div>
        <button type="submit" class="btn btn-primary"><?php echo $button_login; ?></button>
      </form>
      <p class="no-account-text"><span><?php echo $text_register_account; ?></span></p>
      <a class="btn st-outline" href="<?php echo $register; ?>"><?php echo $text_register; ?></a>
    </div>
  </div>
</div>
<?php echo $footer; ?>