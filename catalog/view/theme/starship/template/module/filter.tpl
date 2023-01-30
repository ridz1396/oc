<div class="filters">
  <div class="price-filter ws-box">
    <div class="label">
      <span><?php echo $price_filter_title; ?></span>
    </div>
    <div class="pf-wrap">
      <div id="rang-slider" class="noUi-horizontal" data-from="<?php echo $price_range['from'] ?>" data-to="<?php echo $price_range['to'] ?>" data-min="<?php echo $price_range['min']; ?>" data-max="<?php echo $price_range['max']; ?>"></div>
    </div>
    <label class="range-label from"><input type="text" id="range-to" name="from"></label>
    <label  class="range-label to"><input type="text" id="range-from" name="to"></label>
  </div>
  <div class="filter-group ws-box show" data-group-type="status">
    <div class="label">
      <span>Availability</span>
    </div>
    <div class="items">
      <?php foreach ($filter_statuses as $filter_status) { ?>
      <label class="filter">
      <?php if (in_array($filter_status['stock_status_id'], $filter_availability)) { ?>
      <input type="checkbox" name="status" value="<?php echo $filter_status['stock_status_id']; ?>" checked="checked" />
      <?php } else { ?>
      <input type="checkbox" name="status" value="<?php echo $filter_status['stock_status_id']; ?>" />
      <?php } ?>
      <span><?php echo $filter_status['name']; ?></span>
      </label>
      <?php } ?>
    </div>
  </div>
  <?php foreach ($filter_groups as $filter_group) { ?>
  <div class="filter-group ws-box show" data-group-id="<?php echo $filter_group['filter_group_id']; ?>">
    <div class="label">
      <span><?php echo $filter_group['name']; ?></span>
    </div>
    <div class="items">
      <?php foreach ($filter_group['filter'] as $filter) { ?>
      </label>
      <label class="filter">
        <?php if (in_array($filter['filter_id'], $filter_category)) { ?>
        <input type="checkbox" name="filter" value="<?php echo $filter['filter_id']; ?>" checked="checked" />
        <?php } else { ?>
        <input type="checkbox" name="filter" value="<?php echo $filter['filter_id']; ?>" />
        <?php } ?>
        <span><?php echo $filter['name']; ?></span>
      </label>
      <?php } ?>
    </div>
  </div>
  <?php } ?>
</div>