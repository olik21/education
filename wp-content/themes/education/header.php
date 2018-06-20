<!DOCTYPE html>
<html lang="ru">
  <head>
    <meta charset="<?php bloginfo( 'charset' ); ?>">
  
    <meta name="viewport" content="width=device-width, initial-scale=1.0"> 
    
    <title>Комунальний заклад «Обдарованість»</title>
   
    <link rel="stylesheet" href="<?php bloginfo('template_url' ); ?>/css/reset.css" >
    <link rel="stylesheet" href="<?php bloginfo('template_url' ); ?>/css/bootstrap-grid.css" >

    <link rel="stylesheet" type="text/css" href="<?php bloginfo('template_url' ); ?>/js/slick/slick.css">
    <link rel="stylesheet" type="text/css" href="<?php bloginfo('template_url' ); ?>/js/slick/slick-theme.css">

    <link rel="stylesheet" href="<?php bloginfo('template_url' ); ?>/css/style.css" >
    <link rel="stylesheet" href="<?php bloginfo('template_url' ); ?>/css/font-awesome.min.css">

 
  </head>
 
  <body>
       
   <div class="container">


    <header class="main-header row">
       
    
              
      <div class="col logo">
        <? if( has_custom_logo() ){
           if ( is_home()){ 
            
             $logo_img = '';
              if( $custom_logo_id = get_theme_mod('custom_logo') ){
                $logo_img = wp_get_attachment_image( $custom_logo_id, 'full', false, array(
                  'class'    => 'custom-logo',
                  'itemprop' => 'logo',
                ) );
              }

             echo $logo_img;
            

          } else {
            the_custom_logo();
           }
        }?>
          <p>Комунальний заклад «Обласна спеціалізована школа-інтернат ІІ-ІІІ ступенів «Обдарованість» Харківської обласної ради»</p>
        </div>
        
        <div class="col inform">
        
          <div class="eyeglasses d-none d-md-block">Версія для слабозорих</div>
          <form class="search">
            <input type="text" placeholder="Знайти">
            <button type="submit"></button>
          </form>

          <ul class="user-navigation">
              <li class="login-link registration-link d-none d-md-block"><a href="">Реєстрація</a></li>
              <li class="login-link"><a href="">Вхід на сайт</a></li>
              <li><a class="social-button" href="#"><span class="visually-hidden">google</span></a></li>
              <li><a class="social-button" href="#"><span class="visually-hidden">твитер</span><i class="fab fa-twitter"></i></a></li>
              <li><a class="social-button" href="#"><span class="visually-hidden">фейсбук</span></a></li>
              <li><a class="social-button u" href="#"><span class="visually-hidden">u</span>u </a></li>
          </ul>
        
        </div>
        
        <div class="col bann d-none d-md-block">
           <h4>Наш медіапартнер</h4>
           <a href="triolan"><img src="images/triolan-banner.jpg"  alt="Triolan"/></a>
        </div>

        <? wp_nav_menu( array(
            'menu'            => '',              
            'container'       => 'nav',           // (string) Контейнер меню. Обворачиватель ul. Указывается тег контейнера (по умолчанию в тег div)
            'container_class' => 'main-navigation',              // (string) class контейнера (div тега)
            'menu_class'      => 'site-navigation',          // (string) class самого меню (ul тега)
            
            'echo'            => true,            // (boolean) Выводить на экран или возвращать для обработки
            
            'depth'           => 0,               // (integer) Глубина вложенности (0 - неограничена, 2 - двухуровневое меню)
            'walker'          => '',              // (object) Класс собирающий меню. Default: new Walker_Nav_Menu
            'theme_location'=>'header-menu',
            
          ) );
        ?>

      
      </header>
 <div id="br-crumb">
<?php if (function_exists('wp_breadcrumbs')) wp_breadcrumbs(); ?>
</div>
