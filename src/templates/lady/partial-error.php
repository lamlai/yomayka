<div id="main_place" class="layout-case">
    <div id="errorpage">
        <span class="icon-stack">
          <i class="icon-circle icon-stack-base"></i>
          <i class="icon-file icon-light"></i>
        </span>

        <?php if(!$this->applicationError) { ?>
            <div class="message"><?php echo JText::_('TPL_LADY_ERROR_OCCURED'); ?></div>
        <?php } else {
                if($this->applicationError->getCode() == 404) { ?>
                    <div class="message"><?php echo JText::_('TPL_LADY_PAGE_NOT_FOUND'); ?></div>
                <?php } else { ?>
                    <div class="message"><?php echo JText::_('TPL_LADY_ERROR_OCCURED'); ?></div>
                    <br />
                    <div><?php echo $this->applicationError->getMessage(); ?></div>
                    <br />
                    <div><?php echo $this->applicationError->getTraceAsString(); ?></div>
                <?php } ?>
        <?php } ?>
    </div>
</div>
            
<style>

    #errorpage {
        margin: 50px 0;
        text-align: center;
    }

    #errorpage .icon-stack {
        margin-bottom: 30px;
        text-align: center;
        font-size: 40px;
    }

    #errorpage .icon-stack .icon-stack-base {
        color: #dd7777;
    }

    #errorpage .message {
        font-family: 'Eurofurencelight', 'Open Sans Condensed', Helvetica, Arial, sans-serif;
        color: #dd7777;
        font-size: 30px;
        font-weight: 100;
    }

</style>
