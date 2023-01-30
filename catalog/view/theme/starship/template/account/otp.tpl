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
<div class="container  ac-layout before-login">
	<div class="panel m-auto">
		<div class="p-head">
			<h2 class="text-center"><?php echo $heading_title; ?></h2>
			<p><?php echo $heading_description; ?></p>
		</div>
		<div class="p-body">
			<form action="<?php echo $action2; ?>" method="post" enctype="multipart/form-data">
				<input type="hidden" name="step" value="<?php echo $step; ?>">
				<div class="form-group required">
					<label for="input-otp">OTP</label>
					<input type="password" name="otp" value="<?php echo $otp; ?>" placeholder="OTP" id="input-otp" class="form-control">
					<?php if ($error_otp) { ?>
					<div class="text-danger"><?php echo $error_otp; ?></div>
					<?php } ?>
				</div>
				<div class="form-group required">
					<label for="input-password">Password</label>
					<input type="password" name="password" value="<?php echo $password; ?>" placeholder="Password" id="input-password"
						class="form-control">
					<?php if ($error_password) { ?>
					<div class="text-danger"><?php echo $error_password; ?></div>
					<?php } ?>
				</div>
				<div class="form-group required">
					<label for="input-confirm">Password Confirm</label>
					<input type="password" name="confirm" value="<?php echo $confirm; ?>" placeholder="Password Confirm" id="input-confirm"
						class="form-control">
					<?php if ($error_confirm) { ?>
					<div class="text-danger"><?php echo $error_confirm; ?></div>
					<?php } ?>
				</div>
				<button type="submit" class="btn btn-primary"><?php echo $button_continue; ?></button>
				<a href="<?php echo $action; ?>" class="btn st-outline"><?php echo $button_back; ?></a>
			</form>
		</div>
	</div>
</div>
<?php echo $footer; ?>