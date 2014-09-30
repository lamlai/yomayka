<?php
/**
 * @package		Joomla.Site
 * @subpackage	com_users
 * @copyright	Copyright (C) 2005 - 2012 Open Source Matters, Inc. All rights reserved.
 * @license		GNU General Public License version 2 or later; see LICENSE.txt
 * @since		1.6
 */

defined('_JEXEC') or die;


?><form class="form-horizontal"><?php

    echo YoViewHelperHtml::renderDataAsControl(
        'COM_USERS_PROFILE_NAME_LABEL',
        $this->data->name
    );

    echo YoViewHelperHtml::renderDataAsControl(
        'COM_USERS_PROFILE_USERNAME_LABEL',
        $this->data->username
    );

    echo YoViewHelperHtml::renderDataAsControl(
        'COM_USERS_PROFILE_REGISTERED_DATE_LABEL',
        JHtml::_('date', $this->data->registerDate)
    );

    echo YoViewHelperHtml::renderDataAsControl(
        'COM_USERS_PROFILE_LAST_VISITED_DATE_LABEL',
        $this->data->lastvisitDate == '0000-00-00 00:00:00'? 'COM_USERS_PROFILE_NEVER_VISITED' : JHtml::_('date', $this->data->lastvisitDate)
    );

    echo YoViewHelperHtml::renderDataAsControl(
        'COM_USERS_PROFILE_NAME_LABEL',
        $this->data->name
    );

    if (JFactory::getUser()->id == $this->data->id) {
        ?><div class="form-actions"> <a href="<?php echo JRoute::_('index.php?option=com_users&task=profile.edit&user_id='.(int) $this->data->id);?>" class="btn btn-primary"> <?php echo JText::_('COM_USERS_Edit_Profile'); ?></a> </div><?php
    } ?>
</form>

