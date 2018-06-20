<?php
/**
 * The template for the sidebar containing the main widget area
 *
 * @package WordPress
 * @subpackage Education
 * @since Education 1.0
 */
?>

<?php if ( is_active_sidebar( 'sidebar-1' )  ) : ?>
	<aside id="secondary" class="sidebar widget-area" role="complementary">
		<?php dynamic_sidebar( 'sidebar-1' ); ?>
	</aside><!-- .sidebar .widget-area -->
<?php endif; ?>

<section class="sidebar "><h2 class="sidebar-click">Меню сайту</h2>
            <nav class="sidebar-navigation">
              <h2 >Меню сайту</h2>
              <ul class="sidebar-menu">
                <li class="active"><a href="index.html">Головна сторінка</a></li>
                <li><a href="about.html">Про нашу школу</a></li>
                <li class="menu-drop-left"><a href="teacher.html">Наші педагоги</a>

                  <ul class="popup-drop-left">
                    <li><a href="teacher1.html">Наші педагоги</a></li>
                    <li><a href="teacher2.html">Наші педагоги</a></li>
                    <li><a href="teacher3.html">Наші педагоги</a></li>
                    <li><a href="teacher4.html">Наші педагоги</a></li>
                  </ul>

                </li>
                <li><a href="educat-process.html">Навчально-виховний процес</a></li>
                <li><a href="educat-work.html">Виховна робота</a></li>
                <li><a href="psychologist.html">Сторінка психолога</a></li>
                <li><a href="methodical.html">Методична скрабничка</a></li>
                <li><a href="guard-work.html">Охорона праці</a></li>
                <li><a href="school-government.html">Шкільне самоврядування</a></li>
                <li><a href="zno2018.html">ЗНО 2018</a></li>
                <li><a href="information.html">Інформаційна відкритість</a></li>
                <li><a href="purchase.html">Державні закупівли</a></li>
                <li class="menu-drop-left"><a href="competition.html">Конкурсне приймання</a>
                	<ul class="popup-drop-left">
                    <li><a href="competition1.html">Конкурсне приймання</a></li>
                    <li><a href="competition2.html">Конкурсне приймання 2</a></li>
                    <li><a href="competition3.html">Конкурсне приймання 3</a></li>
                    
                  </ul>
                </li>
                <li><a href="forum.html">Форум</a></li>
                <li><a href="guest.html">Гостьова книга</a></li>
                <li><a href="questionary.html">Реєстраційна анкета</a></li>
                <li><a href="contact.html">Контактна інформація</a></li>
                <li><a href="kh-region.html">Виховний простір Харківщини</a></li>

              </ul>
            </nav>
          
            
</section>