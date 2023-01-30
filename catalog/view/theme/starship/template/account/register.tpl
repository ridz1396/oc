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
    <div class="p-head">
      <h2 class="text-center"><?php echo $heading_title; ?></h2>
    </div>
    <div class="p-body">
			<?php if ($error_warning) { ?>
			<div class="alert alert-danger"><i class="material-icons">error</i> <?php echo $error_warning; ?></div>
			<?php } ?>
      <?php if ($error_captcha) { ?>
      <div class="alert alert-danger"><i class="material-icons">error</i> <?php echo $error_captcha; ?></div>
      <?php } ?>
      <form action="<?php echo $action; ?>" method="post" id="form-register" enctype="multipart/form-data">
        <input type="hidden" id="input-token" name="token" value="" />
        <input type="hidden" name="step" value="1" />
        <div class="multiple-form-group">
          <div class="form-group required">
            <label for="input-firstname"><?php echo $entry_firstname; ?></label>
            <input type="text" name="firstname" value="<?php echo $firstname; ?>" placeholder="<?php echo $entry_firstname; ?>" id="input-firstname" class="form-control" />
						<?php if ($error_firstname) { ?>
						<div class="text-danger"><?php echo $error_firstname; ?></div>
						<?php } ?>
          </div>
          <div class="form-group required">
            <label for="input-lastname"><?php echo $entry_lastname; ?></label>
            <input type="text" name="lastname" value="<?php echo $lastname; ?>" placeholder="<?php echo $entry_lastname; ?>" id="input-lastname" class="form-control" />
						<?php if ($error_lastname) { ?>
						<div class="text-danger"><?php echo $error_lastname; ?></div>
						<?php } ?>
          </div>
        </div>
        <div class="form-group required">
          <label for="input-email"><?php echo $entry_email; ?></label>
          <input type="email" name="email" value="<?php echo $email; ?>" placeholder="<?php echo $entry_email; ?>" id="input-email" class="form-control" />
					<?php if ($error_email) { ?>
					<div class="text-danger"><?php echo $error_email; ?></div>
					<?php } ?>
        </div>
        <div class="form-group required">
          <label for="input-telephone"><?php echo $entry_telephone; ?></label>
          <input type="tel" name="telephone" value="<?php echo $telephone; ?>" placeholder="<?php echo $entry_telephone; ?>" id="input-telephone" class="form-control" />
					<?php if ($error_telephone) { ?>
					<div class="text-danger"><?php echo $error_telephone; ?></div>
					<?php } ?>
        </div>
        <button type="submit" class="btn btn-primary g-recaptcha" data-sitekey="<?php echo $site_key; ?>" data-callback='onSubmit' data-action='submit'><?php echo $button_continue; ?></button>
				
        <p class="no-account-text"><span><?php echo $text_no_account; ?></span></p>
        <p><?php echo $text_account_already; ?></p>
      </form>
    </div>
  </div>
</div>
<script>
  function onSubmit(token) {
      document.getElementById("input-token").value = token
      document.getElementById("form-register").submit();
  }
</script>
<?php echo $footer; ?>