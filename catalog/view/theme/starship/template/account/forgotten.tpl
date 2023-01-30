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
			<?php if ($error_warning) { ?>
			<div class="alert alert-danger"><i class="material-icons">error</i> <?php echo $error_warning; ?></div>
			<?php } ?>
    </div>
    <div class="container ac-layout">
      <div class="panel m-auto">
        <div class="p-head">
          <h2 class="text-center"><?php echo $heading_title; ?></h2>
        </div>
        <div class="p-body">
          <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
            <div class="form-group required">
              <label for="input-username"><?php echo $entry_email; ?></label>
              <input type="text" name="username" value="" placeholder="<?php echo $entry_email; ?>" id="input-username" class="form-control" />
            </div>
            <button type="submit" class="btn btn-primary" ><?php echo $button_continue; ?></button>
          </form>
        </div>
      </div>
    </div>
<?php echo $footer; ?>