<?php
/**
* @version      2.5.0 18.11.2010
* @author       MAXXmarketing GmbH
* @package      Jshopping
* @copyright    Copyright (C) 2010 webdesigner-profi.de. All rights reserved.
* @license      GNU/GPL
*/

defined('_JEXEC') or die('Restricted access');
error_reporting(E_ALL & ~E_NOTICE); 

if (!file_exists(JPATH_SITE.DS.'components'.DS.'com_jshopping'.DS.'jshopping.php')){
    JError::raiseError(500,"Please install component \"joomshopping\"");
}

jimport('joomla.application.component.model');

require_once (JPATH_SITE.DS.'components'.DS.'com_jshopping'.DS."lib".DS."factory.php"); 
require_once (JPATH_SITE.DS.'components'.DS.'com_jshopping'.DS."lib".DS."functions.php");        
JSFactory::loadCssFiles();
JSFactory::loadLanguageFile();
$jshopConfig = &JSFactory::getConfig();

JModel::addIncludePath(JPATH_SITE.DS.'components'.DS.'com_jshopping'.DS.'models');

$cart = &JModel::getInstance('cart', 'jshop');
$cart->load("cart");
$show_count = $params->get('show_count',1);
require(JModuleHelper::getLayoutPath('mod_jshopping_cart_ext')); 
?>