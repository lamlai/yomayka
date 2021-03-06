<?php
defined( '_JEXEC' ) or die( 'Restricted access' );
jimport( 'joomla.application.component.view');

class JshoppingViewProduct_field_values extends JView
{
    function displayList($tpl = null){        
        JToolBarHelper::title( _JSHOP_PRODUCT_EXTRA_FIELD_VALUES, 'generic.png' );        
        JToolBarHelper::custom( "back", 'back', 'back', _JSHOP_BACK_TO_PRODUCT_EXTRA_FIELDS, false);         
        JToolBarHelper::addNewX();
        JToolBarHelper::deleteList();        
        parent::display($tpl);
	}
    function displayEdit($tpl = null){        
        JToolBarHelper::title( $temp = ($this->row->id) ? (_JSHOP_EDIT) : (_JSHOP_NEW), 'generic.png' );
        JToolBarHelper::save();
        JToolBarHelper::spacer();
        JToolBarHelper::apply();
        JToolBarHelper::spacer();
        JToolBarHelper::cancel();        
        parent::display($tpl);
    }
}
?>