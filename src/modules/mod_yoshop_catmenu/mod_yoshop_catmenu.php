<?php
/**
 * @package     Yoshop
 * @subpackage  mod_yoshop_cart
 *
 * @license     GNU General Public License version 2 or later; see LICENSE.txt
 */

defined('_JEXEC') or die;

// Include the syndicate functions only once
//require_once __DIR__ . '/helper.php';
//$params = ModWrapperHelper::getParams($params);
require JModuleHelper::getLayoutPath('mod_yoshop_cart', $params->get('layout', 'default'));
