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
    <div class="container alert-container">
    </div>
    <div class="container ac-layout">
      <?php echo $content_top; ?>
      <div class="ac-title">
        <a href="<?php echo $back; ?>"><span class="material-icons">arrow_back</span></a>
        <h1><?php echo $heading_title; ?></h1>
      </div>
      <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" class="form-horizontal">
        <div class="multiple-form-group">
          <div class="form-group required">
            <label for="input-firstname"><?php echo $entry_firstname; ?> </label>
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
          <input type="email" name="email" value="<?php echo $email; ?>" placeholder="<?php echo $entry_email; ?>" readonly id="input-email" class="form-control" />
					<?php if ($error_email) { ?>
					<div class="text-danger"><?php echo $error_email; ?></div>
					<?php } ?>
        </div>
        <div class="form-group required">
          <label for="input-telephone"><?php echo $entry_telephone; ?></label>
          <input type="tel" name="telephone" value="<?php echo $telephone; ?>" placeholder="<?php echo $entry_telephone; ?>" readonly id="input-telephone" class="form-control" />
					<?php if ($error_telephone) { ?>
					<div class="text-danger"><?php echo $error_telephone; ?></div>
					<?php } ?>
        </div>
        <div class="form-group">
          <label for="input-fax"><?php echo $entry_fax; ?></label>
          <input type="text" name="fax" value="<?php echo $fax; ?>" placeholder="<?php echo $entry_fax; ?>" id="input-fax" class="form-control" />
        </div>
        <button type="submit" class="btn btn-primary" ><?php echo $button_continue; ?></button>
      </form>
    </div>
    <?php echo $footer; ?>