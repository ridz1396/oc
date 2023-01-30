<h3><?php echo $heading_title; ?></h3>
<div class="row product-layout">
	<?php foreach ($categories as $category) { ?>
		<div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
			<div class="product-thumb transition">
				<div class="image"><a href="<?php echo $category['href']; ?>"><img src="<?php echo $category['thumb']; ?>" alt="<?php echo $category['name']; ?>" title="<?php echo $category['name']; ?>" class="img-responsive" /></a></div>
				<div class="caption text-center" style="min-height: 40px;">
					<h4><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></h4>
				</div>
			</div>
		</div>
	<?php } ?>
</div>
