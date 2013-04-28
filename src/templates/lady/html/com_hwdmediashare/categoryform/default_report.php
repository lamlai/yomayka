<?php
/**
 * @version    SVN $Id: default_report.php 234 2012-03-06 10:41:48Z dhorsfall $
 * @package    hwdMediaShare
 * @copyright  Copyright (C) 2012 Highwood Design Limited. All rights reserved.
 * @license    GNU General Public License http://www.gnu.org/copyleft/gpl.html
 * @author     Dave Horsfall
 * @since      08-Jan-2012 11:20:40
 */

// No direct access to this file
defined('_JEXEC') or die('Restricted access');
JHtml::_('behavior.modal');
JHtml::_('behavior.framework', true);

?>

<div class="edit">
	<form action="<?php echo JRoute::_('index.php?option=com_hwdmediashare'); ?>" method="post" id="adminForm" class="form-horizontal">
		<fieldset>
			<legend><?php echo JText::_( 'COM_HWDMS_REPORT_CATEGORY' ); ?></legend>
			<?php foreach($this->form->getFieldset('details') as $field): ?>
			<div class="control-group">
				<div class="controls"><?php echo $field->label;echo $field->input;?></div>
			</div>
			<?php endforeach; ?>
		</fieldset>
		<div class="form-actions">
			<button onclick="Joomla.submitbutton('category.report')" type="button" class="btn"><?php echo JText::_('COM_HWDMS_REPORT'); ?></button>
			<button onclick="window.parent.SqueezeBox.close();" type="button" class="btn"><?php echo JText::_('COM_HWDMS_CANCEL'); ?></button>
		</div>
		<div>
			<input type="hidden" name="tmpl" value="component" />
			<input type="hidden" name="id" value="<?php echo $this->id; ?>" />
			<input type="hidden" name="task" value="category.report" />
			<?php echo JHtml::_('form.token'); ?> </div>
	</form>
</div>
