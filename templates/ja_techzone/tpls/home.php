<?php
/** 
 *------------------------------------------------------------------------------
 * @package       T3 Framework for Joomla!
 *------------------------------------------------------------------------------
 * @copyright     Copyright (C) 2004-2013 JoomlArt.com. All Rights Reserved.
 * @license       GNU General Public License version 2 or later; see LICENSE.txt
 * @authors       JoomlArt, JoomlaBamboo, (contribute to this project at github 
 *                & Google group to become co-author)
 * @Google group: https://groups.google.com/forum/#!forum/t3fw
 * @Link:         http://t3-framework.org 
 *------------------------------------------------------------------------------
 */


defined('_JEXEC') or die;

$vertical  = $this->params->get('navigation_vertical_enable',1);
$verticalClass = '';
if ($vertical) {
  $verticalClass = 'ja-vertical-menu';
}
?>

<!DOCTYPE html>
<html lang="<?php echo $this->language; ?>" dir="<?php echo $this->direction; ?>"
	  class='<jdoc:include type="pageclass" />'>

<head>
	<jdoc:include type="head" />
	<?php $this->loadBlock('head') ?>
</head>

<body class="homepage <?php echo $verticalClass; ?>">

<div class="t3-wrapper"> <!-- Need this wrapper for off-canvas menu. Remove if you don't use of-canvas -->
  <div class="container"><div class="row">
  <?php $this->loadBlock('header') ?>

  <?php $this->loadBlock('slideshow') ?>

  <?php $this->loadBlock('spotlight-1') ?>

  <?php $this->loadBlock('spotlight-2') ?>

  <?php $this->loadBlock('tabs') ?>

  <?php $this->loadBlock('mainbody') ?>

  <?php $this->loadBlock('spotlight-3') ?>

  <?php $this->loadBlock('spotlight-4') ?>

  <?php $this->loadBlock('navhelper') ?>

  <?php $this->loadBlock('footer') ?>
  </div></div>
</div>

</body>

</html>