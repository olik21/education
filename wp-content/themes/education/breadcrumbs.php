<div id="breadcrumbs">
   <?php if (is_home()) { ?>  
  <div>YOME</div>
  
  <?php } elseif (is_single()) { ?>
      <a href="<?php echo get_option('home'); ?>">Главная</a> »            
      <?php foreach((get_the_category()) as $cat) { 
      $cat=$cat->cat_ID; 
      echo(get_category_parents($cat, TRUE, ' » ')); } the_title(); ?>

     <?php } ?>
</div>