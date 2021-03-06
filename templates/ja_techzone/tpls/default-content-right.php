<?php
/*
 * ------------------------------------------------------------------------
 * JA Techzone Template
 * ------------------------------------------------------------------------
 * Copyright (C) 2004-2011 J.O.O.M Solutions Co., Ltd. All Rights Reserved.
 * @license - Copyrighted Commercial Software
 * Author: J.O.O.M Solutions Co., Ltd
 * Websites:  http://www.joomlart.com -  http://www.joomlancers.com
 * This file may not be redistributed in whole or significant part.
 * ------------------------------------------------------------------------
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

<body class="<?php echo $verticalClass; ?>">

<div class="t3-wrapper"> <!-- Need this wrapper for off-canvas menu. Remove if you don't use of-canvas -->
  <div class="container"><div class="row">
  <?php $this->loadBlock('header') ?>

  <?php $this->loadBlock('masthead') ?>

  <?php $this->loadBlock('spotlight-1') ?>

  <?php $this->loadBlock('mainbody-content-right') ?>

  <?php $this->loadBlock('spotlight-2') ?>

  <?php $this->loadBlock('navhelper') ?>

  <?php $this->loadBlock('footer') ?>
  </div></div>
</div>

</body>

</html>