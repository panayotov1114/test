<?php echo $header; ?>
<div class="container">
  <!-- breadcrumb -->
  <!--
  <ul class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
    <?php } ?>
  </ul>
  -->
  <?php if ($success) { ?>
  <div class="alert alert-success"><i class="fa fa-check-circle"></i> <?php echo $success; ?></div>
  <?php } ?>
  <div class="row"><?php echo $column_left; ?>
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-6'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-sm-9'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-12'; ?>
    <?php } ?>

    <div id="content" class="<?php echo $class; ?>"><?php echo $content_top; ?>
      <h1><?php echo $text_my_account; ?></h1>

      <hr>
      <div>
        <h4><?php echo $customer_firstname; ?> <?php echo $customer_lastname; ?></h4>
        <h5><?php echo $customer_email; ?></h5>
        <h5><?php echo $customer_telephone; ?></h5>
        <a class="link" href="<?php echo $edit; ?>">Редактирай</a>
      </div>
      <div class="row"></div>
      <hr>

      <ul class="list-unstyled">
        <li><a href="<?php echo $password; ?>"><?php echo $text_password; ?></a></li>
        <li><a href="<?php echo $address; ?>"><?php echo $text_address; ?></a></li>
        <li><a href="<?php echo $wishlist; ?>"><?php echo $text_wishlist; ?></a></li>
        <li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
        <!--<li><a href="<?php echo $download; ?>"><?php echo $text_download; ?></a></li>-->
        <?php if ($reward) { ?>
        <li><a href="<?php echo $reward; ?>"><?php echo $text_reward; ?></a></li>
        <?php } ?>
        <!--<li><a href="<?php echo $return; ?>"><?php echo $text_return; ?></a></li>-->
        <!--<li><a href="<?php echo $transaction; ?>"><?php echo $text_transaction; ?></a></li>-->
        <!--<li><a href="<?php echo $recurring; ?>"><?php echo $text_recurring; ?></a></li>-->
        <li><a href="<?php echo $newsletter; ?>"><?php echo $text_newsletter; ?></a></li>  
      </ul>

      <!-- Кредитни карти -->
      <?php if ($credit_cards) { ?>
      <h2><?php echo $text_credit_card; ?></h2>
      <ul class="list-unstyled">
        <?php foreach ($credit_cards as $credit_card) { ?>
        <li><a href="<?php echo $credit_card['href']; ?>"><?php echo $credit_card['name']; ?></a></li>
        <?php } ?>
      </ul>
      <?php } ?>

      <?php echo $content_bottom; ?></div>
    <?php echo $column_right; ?></div>
</div>
<?php echo $footer; ?> 