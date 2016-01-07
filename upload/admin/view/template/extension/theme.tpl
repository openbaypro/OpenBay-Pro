<?php echo $header; ?><?php echo $column_left; ?>
<div id="content">
  <div class="page-header">
    <div class="container-fluid">
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
    <?php if ($success) { ?>
    <div class="alert alert-success"><i class="fa fa-check-circle"></i> <?php echo $success; ?>
      <button type="button" class="close" data-dismiss="alert">&times;</button>
    </div>
    <?php } ?>
    <div class="panel panel-default">
      <div class="panel-heading">
        <h3 class="panel-title"><i class="fa fa-list"></i> <?php echo $text_list; ?></h3>
      </div>
      <div class="panel-body">
        <div class="table-responsive">
          <table class="table table-bordered table-hover">
            <thead>
              <tr>
                <td class="text-left"><?php echo $column_name; ?></td>
                <td class="text-left"><?php echo $column_status; ?></td>
                <td class="text-right"><?php echo $column_action; ?></td>
              </tr>
            </thead>
            <tbody>
              <?php if ($extensions) { ?>
              <?php foreach ($extensions as $extension) { ?>
              <tr class="active">
                <td class="text-left"><b><?php echo $extension['name']; ?></b></td>
                <td class="text-left"></td>
                <td class="text-right"><?php if (!$extension['installed']) { ?>
                  <a href="<?php echo $extension['install']; ?>" data-toggle="tooltip" title="<?php echo $button_install; ?>" class="btn btn-success"><i class="fa fa-plus-circle"></i></a>
                  <?php } else { ?>
                  <a onclick="confirm('<?php echo $text_confirm; ?>') ? location.href='<?php echo $extension['uninstall']; ?>' : false;" data-toggle="tooltip" title="<?php echo $button_uninstall; ?>" class="btn btn-danger"><i class="fa fa-minus-circle"></i></a>
                  <?php } ?></td>
              </tr>
              <?php if ($extension['installed']) { ?>
              <?php foreach ($extension['store'] as $store) { ?>
              <tr>
                <td class="text-left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $store['name']; ?></td>
                <td class="text-left"><?php echo $store['status'] ?></td>
                <td class="text-right"><a href="<?php echo $store['edit']; ?>" data-toggle="tooltip" title="<?php echo $button_edit; ?>" class="btn btn-primary"><i class="fa fa-pencil"></i></a></td>
              </tr>
              <?php } ?>
              <?php } ?>
              <?php } ?>
              <?php } else { ?>
              <tr>
                <td class="text-center" colspan="3"><?php echo $text_no_results; ?></td>
              </tr>
              <?php } ?>
            </tbody>
          </table>
        </div>
      </div>
    </div>
  </div>
</div>
<?php echo $footer; ?>
