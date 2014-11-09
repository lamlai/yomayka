<?php
/**
 * @version     0.5
 * @package     com_yoshop
 * @copyright   © 2013. Все права защищены.
 * @license     GNU General Public License версии 2 или более поздней; Смотрите LICENSE.txt
 * @author      Andreyalek <andreyalek@gmail.com> - http://
 */

// No direct access
defined('_JEXEC') or die;

jimport('joomla.application.component.view');

/**
 * View class for a list of Yoshop.
 */
class YoshopViewProducts extends YoView
{
	protected $model;
	protected $fields;
    protected $state;
	protected $items;
	protected $pagination;

	/**
	 * Display the view
	 */
	public function display($tpl = null)
	{
        $this->model        = new YoshopModelProducts();
        $this->state		= $this->model->getState();
        $this->items		= $this->model->getItems();
        $this->pagination	= $this->model->getPagination();

        $catId = $this->state->get('filter.category_id');
        $this->fields = !empty($catId)?
            YoshopModelProduct::getFieldsForType($catId, $this->state->get('fields')) :
            array();

        parent::display($tpl);
	}
}
