<div class="m-home m-cat">
	<h2 class="m-header"><?php echo $heading_title; ?></h2>
	<p class="m-blurb"><?php echo $heading_description; ?></p>
	<div class="cat-items-wrap">
		<?php foreach ($categories as $category) { ?>
		<div class="cat-item">
			<a href="<?php echo $category['href']; ?>" class="cat-item-inner">
				<span class="cat-icon"><img
						src="<?php echo $category['thumb']; ?>" alt="<?php echo $category['name']; ?>"
						width="48" height="48"></span>
				<p><?php echo $category['name']; ?></p>
			</a>
		</div>
		<?php } ?>
	</div>
</div>