<?php
/**
 * @version     0.5
 * @package     com_yoshop
 * @copyright   © 2013. Все права защищены.
 * @license     GNU General Public License версии 2 или более поздней; Смотрите LICENSE.txt
 * @author      Andreyalek <andreyalek@gmail.com> - http://
 */
// no direct access
defined('_JEXEC') or die;

JHtml::addIncludePath(JPATH_COMPONENT . '/helpers/html');
//JHtml::_('behavior.tooltip');
//JHtml::_('behavior.formvalidation');
//JHtml::_('formbehavior.chosen', 'select');
//JHtml::_('behavior.keepalive');

// Import CSS
$document = JFactory::getDocument();
$document->addStyleSheet('administrator/components/com_yoshop/assets/css/yoshop.css');

YoViewHelperHtml::initJsApp();

?>
<script type="text/javascript">
    jQuery(document).ready(function(){

    });

    Joomla.submitbutton = function(task)
    {
        if(task == 'product.cancel'){
            Joomla.submitform(task, document.getElementById('product-form'));
        }
        else{

            if (task != 'product.cancel' && document.formvalidator.isValid(document.id('product-form'))) {

                Joomla.submitform(task, document.getElementById('product-form'));
            }
            else {
                alert('<?php echo $this->escape(JText::_('JGLOBAL_VALIDATION_FORM_FAILED')); ?>');
            }
        }
    }
</script>


<a  class="btn btn-default"
    href="<?php echo JRoute::_('index.php?option=com_users&view=products'); ?>"
>
    <?php echo JText::_("COM_USERS_BACK"); ?>
</a>

<a  class="btn btn-success"
    href="<?php echo JRoute::_('index.php?option=com_users&view=product&id='.$this->id); ?>"
>
    <?php echo JText::_("COM_USERS_SHOW"); ?>
</a>

<form class="form-horizontal form-validate" role="form" id="member-registration" action="<?php echo JRoute::_('index.php?option=com_yoshop'); ?>" method="post" enctype="multipart/form-data">

    <?php $fields = (array) $this->form->getFieldset();?>
    <?php foreach ($fields as $field) {// Iterate through the fields in the set and display them.?>
        <?php if (!$field->hidden) {// If the field is hidden, just display the input.?>
            <?php echo YoViewHelperHtml::renderFormElement($field); ?>
        <?php } else { ?>
            <?php echo $field->input;?>
        <?php } ?>
    <?php } ?>

    <div class="form-group">
        <div class="col-sm-offset-2 col-sm-10">
            <button type="submit" class="btn btn-default"><?php echo JText::_('JREGISTER');?></button>
            <a class="btn" href="<?php echo JRoute::_('');?>" title="<?php echo JText::_('JCANCEL');?>"><?php echo JText::_('JCANCEL');?></a>
        </div>
    </div>

    <?php echo YoViewHelperHtml::renderFormAssets('yoshop.product.save.'.$this->id); ?>

</form>

<script>
    window.requireJsAppInit = function(){
      require(['jquery', 'yo', 'messenger', 'preloader'], function($, yo, Messenger, Preloader) {

        var preloader = new Preloader;
        var messenger = new Messenger;

        yo.on('start.process', function(){
            preloader.show();
        })
        yo.on('done.process', function(){
            preloader.hide();
        })

        yo.on('message.notify', function(ev){
            messenger.show(ev.params.text, 'message');
        })
        yo.on('error.notify', function(ev){
            messenger.show(ev.text, 'error');
        })
      })
    }
</script>