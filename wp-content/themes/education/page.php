<?php
/**
 * The template for displaying pages
 *
 * @package WordPress
 * @subpackage Education
 * @since Education 1.0
 */

get_header(); 

$post_id = get_post( $post->ID, ARRAY_A);
?>

<div class="row two-col">
          
          <?php get_sidebar(); ?>

	<main class="main-content page-inner">
	        
	    <section class="page-information">
	        <h1 ><?= the_title();?></h1>

	        <div class="img">
	            <a href="about"><img src="<?php bloginfo('template_url' ); ?>/images/about-school.jpg" alt="" /></a>
	            <a href="about"><img src="<?php bloginfo('template_url' ); ?>/images/about-banner.jpg" alt="" /></a>
	        </div>

				<?= $post_id['post_content']; ?> 
		</section>	

	</main><!-- .site-main -->

	

</div> <!-- end row -->

<?php //get_sidebar(); ?>
<?php get_footer(); ?>
