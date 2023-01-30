<?php echo $header; ?>
	<?php echo $column_left; ?>
	
	<div id="content">
		<div class="page-header">
			<div class="container-fluid">
				<div class="pull-right">
					<button type="submit" form="form-seo-content" data-toggle="tooltip" title="<?php echo $button_save; ?>" class="btn btn-primary"><i class="fa fa-save"></i></button>
					<a href="<?php echo $cancel; ?>" data-toggle="tooltip" title="<?php echo $button_cancel; ?>" class="btn btn-default"><i class="fa fa-reply"></i></a>
				</div>
				<h1><?php echo $heading_title; ?></h1>
				<ul class="breadcrumb">
					<?php foreach ($breadcrumbs as $breadcrumb) { ?>
						<li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
					<?php } ?>
				</ul>
			</div>
		</div>
		
		<div class="container-fluid">
			<?php if ($error_warning) { ?>
				<div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?>
					<button type="button" class="close" data-dismiss="alert">&times;</button>
				</div>
			<?php } ?>
			
			<div class="panel panel-default">
				<div class="panel-heading">
					<h3 class="panel-title"><i class="fa fa-pencil"></i> <?php echo $text_edit; ?></h3>
				</div>
				
				<div class="panel-body">
					<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form-seo-content" class="form-horizontal">
						
						<div class="form-group">
							<label class="col-sm-2 control-label" for="input-name"><?php echo $entry_name; ?></label>
							<div class="col-sm-10">
								<input type="text" name="name" value="<?php echo $name; ?>" placeholder="<?php echo $entry_name; ?>" id="input-name" class="form-control" />
								<?php if ($error_name) { ?>
									<div class="text-danger"><?php echo $error_name; ?></div>
								<?php } ?>
							</div>
						</div>

						<div class="form-group">
							<label class="col-sm-2 control-label" for="input-content"><?php echo $entry_content; ?></label>
							<div class="col-sm-10">
								<textarea name="content" cols="60" rows="8" placeholder="<?php echo $entry_content; ?>" id="input-content" class="form-control"><?php echo $content; ?></textarea>
							</div>
						</div>
						
						<div class="form-group">
							<label class="col-sm-2 control-label" for="input-status"><?php echo $entry_status; ?></label>
							<div class="col-sm-10">
								<select name="status" id="input-status" class="form-control">
									<?php if ($status) { ?>
										<option value="1" selected="selected"><?php echo $text_enabled; ?></option>
										<option value="0"><?php echo $text_disabled; ?></option>
									<?php } else { ?>
										<option value="1"><?php echo $text_enabled; ?></option>
										<option value="0" selected="selected"><?php echo $text_disabled; ?></option>
									<?php } ?>
								</select>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	
	<script type="text/javascript">
		$('#input-content').summernote({height: 300});

		$('input[name=\'category_name\']').autocomplete({
			source: function(request, response) {
				$.ajax({
					url: 'index.php?route=catalog/category/autocomplete&token=<?php echo $token; ?>&filter_name=' +  encodeURIComponent(request),
					dataType: 'json',
					success: function(json) {
						response($.map(json, function(item) {
							return {
								label: item['name'],
								value: item['category_id']
							}
						}));
					}
				});
			},
			select: function(item) {
				$('input[name=\'category_name\']').val('');
				
				$('#seo-content' + item['value']).remove();
				
				$('#seo-content').append('<div id="seo-content' + item['value'] + '"><i class="fa fa-minus-circle"></i> ' + item['label'] + '<input type="hidden" name="category[]" value="' + item['value'] + '" /></div>');	
			}
		});
	
		$('#seo-content').delegate('.fa-minus-circle', 'click', function() {
			$(this).parent().remove();
		});
	</script>
	
<?php echo $footer; ?>