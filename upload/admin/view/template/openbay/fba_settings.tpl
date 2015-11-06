<?php echo $header; ?><?php echo $column_left; ?>
<div id="content">
  <div class="page-header">
    <div class="container-fluid">
      <div class="pull-right">
        <button type="submit" form="form-fba-settings" data-toggle="tooltip" title="<?php echo $button_save; ?>" class="btn btn-primary" onclick="validateForm(); return false;"><i class="fa fa-check-circle"></i></button>
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
      <div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?></div>
    <?php } ?>
    <div class="panel panel-default">
      <div class="panel-heading">
        <h3 class="panel-title"><i class="fa fa-list"></i> <?php echo $text_edit; ?></h3>
      </div>
      <div class="panel-body">
        <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form-fba-settings" class="form-horizontal">
      <ul class="nav nav-tabs">
        <li class="active"><a href="#tab-general" data-toggle="tab"><?php echo $tab_api_info; ?></a></li>
      </ul>
      <div class="tab-content">
        <div class="tab-pane active" id="tab-general">
          <div class="form-group">
            <label class="col-sm-2 control-label" for="openbay_fba_status"><?php echo $text_status; ?></label>
            <div class="col-sm-10">
              <select name="openbay_fba_status" id="openbay_fba_status" class="form-control">
                <?php if ($openbay_fba_status) { ?>
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
            <label class="col-sm-2 control-label"><?php echo $text_api_other; ?></label>
            <div class="col-sm-10">
              <p><a href="https://account.openbaypro.com/fba/apiregister/" target="_BLANK"><i class="fa fa-link"></i> <?php echo $text_token_register; ?></a></p>
            </div>
          </div>
          <div class="form-group">
            <label class="col-sm-2 control-label" for="openbay_fba_api_key"><span data-toggle="tooltip" data-container="#tab-content" title="<?php echo $help_api_key; ?>"><?php echo $entry_api_key; ?></span></label>
            <div class="col-sm-10">
              <input type="text" name="openbay_fba_api_key" value="<?php echo $openbay_fba_api_key; ?>" placeholder="<?php echo $entry_api_key; ?>" id="openbay_fba_api_key" class="form-control" />
            </div>
          </div>
          <div class="form-group">
            <label class="col-sm-2 control-label" for="openbay_fba_api_account_id"><span data-toggle="tooltip" data-container="#tab-content" title="<?php echo $help_account_id; ?>"><?php echo $entry_account_id; ?></span></label>
            <div class="col-sm-10">
              <input type="text" name="openbay_fba_api_account_id" value="<?php echo $openbay_fba_api_account_id; ?>" placeholder="<?php echo $entry_account_id; ?>" id="openbay_fba_api_account_id" class="form-control" />
            </div>
          </div>
          <div class="form-group">
            <label class="col-sm-2 control-label" for="openbay_fba_debug_log"><span data-toggle="tooltip" data-container="#tab-content" title="<?php echo $help_debug_log; ?>"><?php echo $entry_debug_log; ?></span></label>
            <div class="col-sm-10">
              <select name="openbay_fba_debug_log" id="openbay_fba_debug_log" class="form-control">
                <?php if ($openbay_fba_debug_log) { ?>
                <option value="1" selected="selected"><?php echo $text_yes; ?></option>
                <option value="0"><?php echo $text_no; ?></option>
                <?php } else { ?>
                <option value="1"><?php echo $text_yes; ?></option>
                <option value="0" selected="selected"><?php echo $text_no; ?></option>
                <?php } ?>
              </select>
            </div>
          </div>
          <div class="form-group">
            <label class="col-sm-2 control-label" for="openbay_fba_send_orders"><span data-toggle="tooltip" data-container="#tab-content" title="<?php echo $help_send_orders; ?>"><?php echo $entry_send_orders; ?></span></label>
            <div class="col-sm-10">
              <select name="openbay_fba_send_orders" id="openbay_fba_send_orders" class="form-control">
                <?php if ($openbay_fba_send_orders) { ?>
                <option value="1" selected="selected"><?php echo $text_yes; ?></option>
                <option value="0"><?php echo $text_no; ?></option>
                <?php } else { ?>
                <option value="1"><?php echo $text_yes; ?></option>
                <option value="0" selected="selected"><?php echo $text_no; ?></option>
                <?php } ?>
              </select>
            </div>
          </div>
          <div class="form-group">
            <label class="col-sm-2 control-label" for="openbay_fba_order_prefix"><span data-toggle="tooltip" data-container="#tab-content" title="<?php echo $help_order_id_prefix; ?>"><?php echo $entry_order_id_prefix; ?></span></label>
            <div class="col-sm-10">
              <p class="alert alert-warning"><i class="fa fa-exclamation-circle"></i> <?php echo $text_prefix_warning; ?></p>
              <input type="text" name="openbay_fba_order_prefix" value="<?php echo $openbay_fba_order_prefix ?>" placeholder="<?php echo $entry_order_id_prefix; ?>" id="openbay_fba_order_prefix" class="form-control" />
            </div>
          </div>
          <div class="form-group">
            <label class="col-sm-2 control-label" for="openbay_fba_fulfill_policy"><span data-toggle="tooltip" data-container="#tab-content" title="<?php echo $help_fulfill_policy; ?>"><?php echo $entry_fulfill_policy; ?></span></label>
            <div class="col-sm-10">
              <select name="openbay_fba_fulfill_policy" id="openbay_fba_fulfill_policy" class="form-control ftpsetting">
                <?php foreach ($fulfillment_policy as $code => $fulfillment_policy_option) { ?>
                <option value="<?php echo $code;?>" <?php echo ($openbay_fba_fulfill_policy == $code ? 'selected="selected"' : '') ?>><?php echo $fulfillment_policy_option; ?></option>
                <?php } ?>
              </select>
            </div>
          </div>
          <div class="form-group">
            <label class="col-sm-2 control-label" for="openbay_fba_shipping_speed"><span data-toggle="tooltip" data-container="#tab-content" title="<?php echo $help_shipping_speed; ?>"><?php echo $entry_shipping_speed; ?></span></label>
            <div class="col-sm-10">
              <select name="openbay_fba_shipping_speed" id="openbay_fba_shipping_speed" class="form-control ftpsetting">
                <?php foreach ($shipping_speed as $code => $shipping_speed_option) { ?>
                  <option value="<?php echo $code;?>" <?php echo ($openbay_fba_shipping_speed == $code ? 'selected="selected"' : '') ?>><?php echo $shipping_speed_option; ?></option>
                <?php } ?>
              </select>
            </div>
          </div>
          <div class="form-group">
            <label class="col-sm-2 control-label" for="openbay_fba_order_trigger_status"><span data-toggle="tooltip" data-container="#tab-content" title="<?php echo $help_new_order_status; ?>"><?php echo $entry_new_order_status; ?></span></label>
            <div class="col-sm-10">
              <select name="openbay_fba_order_trigger_status" id="openbay_fba_order_trigger_status" class="form-control">
                <?php foreach ($order_statuses as $status) { ?>
                <option value="<?php echo $status['order_status_id']; ?>" <?php echo ($openbay_fba_order_trigger_status == $status['order_status_id'] ? ' selected=selected' :''); ?>><?php echo $status['name']; ?></option>
                <?php } ?>
              </select>
            </div>
          </div>
          <div class="form-group">
            <label class="col-sm-2 control-label" for="openbay_fba_cancel_order_trigger_status"><span data-toggle="tooltip" data-container="#tab-content" title="<?php echo $help_cancel_order_status; ?>"><?php echo $entry_cancel_order_status; ?></span></label>
            <div class="col-sm-10">
              <select name="openbay_fba_cancel_order_trigger_status" id="openbay_fba_cancel_order_trigger_status" class="form-control">
                <option value="0"><?php echo $text_disabled_cancel; ?></option>
                <?php foreach ($order_statuses as $status) { ?>
                <option value="<?php echo $status['order_status_id']; ?>" <?php echo ($openbay_fba_cancel_order_trigger_status == $status['order_status_id'] ? ' selected=selected' :''); ?>><?php echo $status['name']; ?></option>
                <?php } ?>
              </select>
            </div>
          </div>
        </div>
      </div>
    </form>
      </div>
    </div>
  </div>
</div>
<?php echo $footer; ?>