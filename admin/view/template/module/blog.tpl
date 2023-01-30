<?php echo $header; ?><?php echo $column_left; ?>
<div id="content">
  <div class="page-header">
    <div class="container-fluid">
      <div class="pull-right">
        <button type="submit" form="form-blog" data-toggle="tooltip" title="<?php echo $button_save; ?>" class="btn btn-primary"><i class="fa fa-save"></i></button>
        <a href="<?php echo $cancel; ?>" data-toggle="tooltip" title="<?php echo $button_cancel; ?>" class="btn btn-default"><i class="fa fa-reply"></i></a></div>
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
        <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form-blog" class="form-horizontal">
        <fieldset>  
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
        </fieldset>            
        <fieldset>
          <legend><?php echo $text_search; ?></legend>          
          <div class="form-group">
            <label class="col-sm-2 control-label" for="input-search_status"><?php echo $entry_search_status; ?></label>
            <div class="col-sm-10">
              <select name="search_status" id="input-search_status" class="form-control">
                <?php if ($search_status) { ?>
                <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                <option value="0"><?php echo $text_disabled; ?></option>
                <?php } else { ?>
                <option value="1"><?php echo $text_enabled; ?></option>
                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                <?php } ?>
              </select>
            </div>
          </div>
          <div class="form-group">
            <label class="col-sm-2 control-label" for="input-search_sort_order"><?php echo $entry_search_sort_order; ?></label>
            <div class="col-sm-10">
              <input type="text" name="search_sort_order" value="<?php echo $search_sort_order; ?>" placeholder="<?php echo $entry_search_sort_order; ?>" id="input-search_sort_order" class="form-control" />
            </div>
          </div>
        </fieldset>
        <fieldset>  
          <legend><?php echo $text_category; ?></legend>  
          <div class="form-group">
            <label class="col-sm-2 control-label" for="input-category_status"><?php echo $entry_category_status; ?></label>
            <div class="col-sm-10">
              <select name="category_status" id="input-category_status" class="form-control">
                <?php if ($category_status) { ?>
                <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                <option value="0"><?php echo $text_disabled; ?></option>
                <?php } else { ?>
                <option value="1"><?php echo $text_enabled; ?></option>
                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                <?php } ?>
              </select>
            </div>
          </div>
          <div class="form-group">
            <label class="col-sm-2 control-label" for="input-category_sort_order"><?php echo $entry_category_sort_order; ?></label>
            <div class="col-sm-10">
              <input type="text" name="category_sort_order" value="<?php echo $category_sort_order; ?>" placeholder="<?php echo $entry_category_sort_order; ?>" id="input-category_sort_order" class="form-control" />
            </div>
          </div>
        </fieldset>
        <fieldset>  
          <legend><?php echo $text_archive; ?></legend> 
          <div class="form-group">
            <label class="col-sm-2 control-label" for="input-archive_status"><?php echo $entry_archive_status; ?></label>
            <div class="col-sm-10">
              <select name="archive_status" id="input-archive_status" class="form-control">
                <?php if ($archive_status) { ?>
                <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                <option value="0"><?php echo $text_disabled; ?></option>
                <?php } else { ?>
                <option value="1"><?php echo $text_enabled; ?></option>
                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                <?php } ?>
              </select>
            </div>
          </div>
          <div class="form-group">
            <label class="col-sm-2 control-label" for="input-archive_type"><?php echo $entry_archive_type; ?></label>
            <div class="col-sm-10">
              <select name="archive_type" id="input-archive_type" class="form-control">
                <?php if ($archive_type) { ?>
                <option value="1" selected="selected"><?php echo $text_month; ?></option>
                <option value="0"><?php echo $text_year; ?></option>
                <?php } else { ?>
                <option value="1"><?php echo $text_month; ?></option>
                <option value="0" selected="selected"><?php echo $text_year; ?></option>
                <?php } ?>
              </select> 
            </div>
          </div>
          <div class="form-group">
            <label class="col-sm-2 control-label" for="input-archive_sort_order"><?php echo $entry_archive_sort_order; ?></label>
            <div class="col-sm-10">
              <input type="text" name="archive_sort_order" value="<?php echo $archive_sort_order; ?>" placeholder="<?php echo $entry_archive_sort_order; ?>" id="input-archive_sort_order" class="form-control" />
            </div>
          </div>
        </fieldset>
        <fieldset>  
          <legend><?php echo $text_recent_post; ?></legend> 
          <div class="form-group">
            <label class="col-sm-2 control-label" for="input-post_status"><?php echo $entry_post_status; ?></label>
            <div class="col-sm-10">
              <select name="post_status" id="input-post_status" class="form-control">
                <?php if ($post_status) { ?>
                <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                <option value="0"><?php echo $text_disabled; ?></option>
                <?php } else { ?>
                <option value="1"><?php echo $text_enabled; ?></option>
                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                <?php } ?>
              </select>
            </div>
          </div>
          <div class="form-group">
            <label class="col-sm-2 control-label" for="input-post_limit"><?php echo $entry_post_limit; ?></label>
            <div class="col-sm-10">
              <input type="text" name="post_limit" value="<?php echo $post_limit; ?>" placeholder="<?php echo $entry_post_limit; ?>" id="input-post_limit" class="form-control" />
            </div>
          </div>
          <div class="form-group">
            <label class="col-sm-2 control-label" for="input-post_sort_order"><?php echo $entry_post_sort_order; ?></label>
            <div class="col-sm-10">
              <input type="text" name="post_sort_order" value="<?php echo $post_sort_order; ?>" placeholder="<?php echo $entry_post_sort_order; ?>" id="input-post_sort_order" class="form-control" />
            </div>
          </div>
        </fieldset>
        <fieldset>  
          <legend><?php echo $text_recent_comment; ?></legend> 
          <div class="form-group">
            <label class="col-sm-2 control-label" for="input-comment_status"><?php echo $entry_comment_status; ?></label>
            <div class="col-sm-10">
              <select name="comment_status" id="input-comment_status" class="form-control">
                <?php if ($comment_status) { ?>
                <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                <option value="0"><?php echo $text_disabled; ?></option>
                <?php } else { ?>
                <option value="1"><?php echo $text_enabled; ?></option>
                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                <?php } ?>
              </select>
            </div>
          </div>
          <div class="form-group">
            <label class="col-sm-2 control-label" for="input-comment_limit"><?php echo $entry_comment_limit; ?></label>
            <div class="col-sm-10">
              <input type="text" name="comment_limit" value="<?php echo $comment_limit; ?>" placeholder="<?php echo $entry_comment_limit; ?>" id="input-comment_limit" class="form-control" />
            </div>
          </div>
          <div class="form-group">
            <label class="col-sm-2 control-label" for="input-comment_sort_order"><?php echo $entry_comment_sort_order; ?></label>
            <div class="col-sm-10">
              <input type="text" name="comment_sort_order" value="<?php echo $comment_sort_order; ?>" placeholder="<?php echo $entry_comment_sort_order; ?>" id="input-comment_sort_order" class="form-control" />
            </div>
          </div>
        </fieldset>   
        <fieldset>  
          <legend><?php echo $text_tag; ?></legend> 
          <div class="form-group">
            <label class="col-sm-2 control-label" for="input-tag_status"><?php echo $entry_tag_status; ?></label>
            <div class="col-sm-10">
              <select name="tag_status" id="input-tag_status" class="form-control">
                <?php if ($tag_status) { ?>
                <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                <option value="0"><?php echo $text_disabled; ?></option>
                <?php } else { ?>
                <option value="1"><?php echo $text_enabled; ?></option>
                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                <?php } ?>
              </select>
            </div>
          </div>
          <div class="form-group">
            <label class="col-sm-2 control-label" for="input-tag_limit"><?php echo $entry_tag_limit; ?></label>
            <div class="col-sm-10">
              <input type="text" name="tag_limit" value="<?php echo $tag_limit; ?>" placeholder="<?php echo $entry_tag_limit; ?>" id="input-tag_limit" class="form-control" />
            </div>
          </div>
          <div class="form-group">
            <label class="col-sm-2 control-label" for="input-tag_sort_order"><?php echo $entry_tag_sort_order; ?></label>
            <div class="col-sm-10">
              <input type="text" name="tag_sort_order" value="<?php echo $tag_sort_order; ?>" placeholder="<?php echo $entry_tag_sort_order; ?>" id="input-tag_sort_order" class="form-control" />
            </div>
          </div>
        </fieldset>      
        </form>
      </div>
    </div>
  </div>
</div>
<?php echo $footer; ?>