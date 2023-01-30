<div class="m-cart">
	<div class="items content">
		<?php if ($products || $vouchers) { ?>
			<?php foreach ($products as $product) { ?>
				<div class="item">
					<?php if ($product['thumb']) { ?>
					<div class="image">
						<img
							src="<?php echo $product['thumb']; ?>"
							alt="<?php echo $product['name']; ?>" width="47" height="47">
					</div>
					<?php } ?>
					<div class="info">
						<div class="name"><?php echo $product['name']; ?></div>
						<span class="amount"><?php echo $product['price']; ?></span>
						<i class="material-icons">clear</i>
						<span><?php echo $product['quantity']; ?></span>
						<span class="eq">=</span>
						<span class="total"><?php echo $product['total']; ?></span>
					</div>
					<div class="remove" onclick="cart.remove('<?php echo $product['key']; ?>');" title="Remove"><i
							class="material-icons" aria-hidden="true">delete</i></div>
				</div>
			<?php } ?>
		<?php } else { ?>
		<div class="empty-content">
			<p class="text-center">
				<?php echo $text_empty; ?>
			</p>
		</div>
		<?php } ?>
	</div>
	<div class="footer">
		<div class="promotion-code">
			<div class="input-group">
				<input type="text" placeholder="Promo Code" id="input-cart-coupon">
				<span class="input-group-btn"><button data-target="#input-cart-coupon" class="btn button-coupon"
						type="submit">Apply</button></span>
			</div>
		</div>
		<?php foreach ($totals as $total) { ?>
		<div class="total">
			<div class="title"><?php echo $total['title']; ?></div>
			<div class="amount"><?php echo $total['text']; ?></div>
		</div>
		<?php } ?>
	</div>
</div>