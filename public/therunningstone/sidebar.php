<div>
<div id="primary" class="widget-area">      
<div id="wordpress2">
<form  method="get" id="searchform" action="" >	
     <div id="search_man"></div>
	  <input type="text" value="<?php _e( '', '' ); ?>" name="s" id="word_search_input" />
	  <input type="submit" id="word_search_btn" value="" />
	  <div id="rss" onclick="javascipr:window.location.href = '<?php bloginfo('rss_url'); ?>';"></div>
</form>
</div>
</div>

<div id="primary" class="widget-area">  
<?php if ( is_sidebar_active('primary-widget-area') ) : ?>
		
			<ul class="xoxo">
				<?php dynamic_sidebar('primary-widget-area'); ?>
			</ul>
<?php else : ?>

<ul class="xoxo">
   <li class="categories"><h2 class="widget-title">Meta</h2></li>
      <ul>
	     <?php wp_register(); ?>

      	<li><?php wp_loginout(); ?></li>
      	<li><a href="http://wordpress.org" title="<?php _e('Powered by Wordpress, state-of-the-art semantic personal publishing platform.'); ?>">Wordpress</a></li>
      	<?php wp_meta(); ?>
      </ul>	
</ul>	

<?php endif; ?>

	

</div><!-- #primary .widget-area -->
		

		<div id="secondary" class="widget-area">
<?php if ( is_sidebar_active('secondary-widget-area') ) : ?>
			<ul class="xoxo">
				<?php dynamic_sidebar('secondary-widget-area'); ?>
			</ul>
			
<?php else : ?>
			<ul class="xoxo">
				<?php wp_list_categories('title_li=<h2 class="widget-title">Categories</h2>'); ?>
			</ul>
<?php endif; ?>	
		</div><!-- #secondary .widget-area -->
</div>