<?php
/**
 * @version     0.5
 * @package     com_yoshop
 * @copyright   © 2013. Все права защищены.
 * @license     GNU General Public License версии 2 или более поздней; Смотрите LICENSE.txt
 * @author      Andreyalek <andreyalek@gmail.com> - http://
 */

// No direct access.
defined('_JEXEC') or die;

jimport('joomla.application.component.modeladmin');

/**
 * Yoshop model.
 */
class YoshopModelOrder extends YoModelAdmin
{
    public function getItem($id = null)
    {
        parent::getItem($id);

        if (!empty($id)) {
            $dbo = JFactory::getDbo();
            $dbo->setQuery('SELECT * from #__yoshop_order_product WHERE order_id=' . (int) $id);
            $this->data->products = new YoCollection($dbo->loadObjectList(), array('rowClass' => 'YoshopModelOrderproduct'));
        }
        return $this->data;
    }

    public function create($data)
    {
        $dbo = JFactory::getDbo();
        $dbo->transactionStart();
        try{

            $order = $data['details'];
            $order['created_date'] = date('Y-m-d H:i:s');
            $order['last_event_date'] = date('Y-m-d H:i:s');
            $order['status'] = YOSHOP_ORDER_STATUS_CREATED;

            if (!parent::save($order)) {
                throw new Exception('Cannot save the order');
            };

            foreach($data['items'] as $item) {
                $modelProduct = $this->createModel('product');
                $modelOrderProduct = $this->createModel('orderproduct');
                $product = $modelProduct->getItem($item['productId']);
                $product->product_id = $product->id;
                $product->order_id = $this->data->id;
                $product->count = $item['count'];
                $product->id = null;
                if (!$modelOrderProduct->save($product)) {
                    throw new Exception('Cannot save product for order');
                }
            }

            $dbo->transactionCommit();
            return true;

        } catch (Exception $e) {
            $dbo->transactionRollback();
            throw $e;
        }
    }

    public function save($data)
    {
        throw new Exception('You must not change the order.');
    }

    public function getProductsCount()
    {
        $count = 0;
        foreach($this->getProducts() as $item) {
            $count += $item->count;
        }

        return $count;
    }

    public function getTotalPrice()
    {
        $price = 0;
        foreach($this->getProducts() as $item) {
            $price += $item->getTotalPrice();
        }
        return $price;
    }

    public function toArray()
    {
        $arr = array();
        $products = $this->getProducts();
        foreach($products as $item) {
            $arr[] = $item->toArray();
        }

        return $arr;
    }

    public function getProducts()
    {
        return $this->data->products;
    }

    public function setInProgress()
    {
        if (!$this->data->id) {
            throw new Exception('Cannot update not loaded order');
        }

        return parent::save(array(
            'status' => YOSHOP_ORDER_STATUS_IN_PROGRESS,
            'last_event_date' => date('Y-m-d H:i:s')
        ));
    }

    public function getForm($data = array(), $loadData = true) {}
}