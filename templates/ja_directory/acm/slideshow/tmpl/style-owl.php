<?php
	if($helper->getRows('data.title') >= $helper->getRows('data.description')) {
		$count = $helper->getRows('data.title');
	} else {
		$count = $helper->getRows('data.description');
	}
?>

<div class="section-inner ">
  <div class="acm-slideshow bg-slideshow">
  	<div id="acm-slideshow-<?php echo $module->id; ?>">
  		<div class="owl-carousel owl-theme">
  				<?php for ($i=0; $i<$count; $i++) : ?>
  				<div class="item">
            <?php if($helper->get('data.image', $i)): ?>
              <img src="<?php echo $helper->get('data.image', $i); ?>" class="slider-img" alt="<?php echo $helper->get('data.title', $i) ?>">
            <?php endif; ?>
            <div class="slider-content">
              <?php if($helper->get('data.title', $i)): ?>
                <h1 class="item-title"><?php echo $helper->get('data.title', $i) ?></h1>
              <?php endif; ?>
              
    					<?php if($helper->get('data.description', $i)): ?>
    						<p class="item-desc"><?php echo $helper->get('data.description', $i) ?></p>
    					<?php endif; ?>
              <?php if($helper->get('data.button', $i)): ?>
                <a href="<?php echo $helper->get('data.button-link', $i) ?>" class="slider-btn btn btn-primary"><?php echo $helper->get('data.button', $i) ?></a>
              <?php endif; ?>
            </div>
  				</div>
  			 	<?php endfor ;?>
  		</div>
  	</div>
  </div>
</div>

<script>
(function($){
  jQuery(document).ready(function($) {
    $("#acm-slideshow-<?php echo $module->id; ?> .owl-carousel").owlCarousel({
      items: 1,
      nav : true,
      merge: false,
      mergeFit: true,
      slideBy: 1
    });
  });
})(jQuery);
</script>