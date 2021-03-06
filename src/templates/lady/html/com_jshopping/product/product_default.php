<?php 
JHTML::stylesheet('templates/lady/assets/css/com_jshopping/product.css');
$product = $this->product; 
?>

<?php include(dirname(__FILE__)."/load.js.php");?>
<div id="product" class="jshop">
<form name = "product" method = "post" action = "<?php print $this->action?>" enctype="multipart/form-data">
    
    <div class="product-body">
    <?php print $this->_tmp_product_html_start;?>
    <?php if ($this->config->display_button_print) print printContent();?>
    
    <?php //include(dirname(__FILE__)."/ratingandhits.php");?>

    <div class="slideshow">    
        <div class="carousel slide" id="product-images-<?php echo $this->product->product_id; ?>">
          <!-- Carousel items -->
          <div class="carousel-inner">
            <?php
            $class='active';
            foreach($this->images as $k=>$image){ ?>
            <div class="item <?php echo $class; $class=''; ?>">
                <a class="lightbox" id="main_image_full_<?php print $image->image_id?>" href="<?php print $this->image_product_path?>/<?php print $image->image_full;?>">
                    <img id = "main_image_<?php print $image->image_id?>" src = "<?php print $this->image_product_path?>/<?php print $image->image_name;?>" alt="<?php print htmlspecialchars($image->_title)?>" title="<?php print htmlspecialchars($image->_title)?>" />
                </a>
            </div>    
            <?php }?>
          </div>
          <!-- Carousel nav -->
          <a class="carousel-control left" href="#product-images-<?php echo $this->product->product_id; ?>" data-slide="prev">&lsaquo;</a>
          <a class="carousel-control right" href="#product-images-<?php echo $this->product->product_id; ?>" data-slide="next">&rsaquo;</a>
        </div>
    </div>    

    <div class="details">
        <div class="details-container">
            <h1 class="pane-header">
                <?php print $this->product->name?>
            </h1>
            <div class = "jshop_prod_description">
                <?php print $this->product->description; ?>
            </div>

            <div class="prod_price">
                <span class="icon icon-tag"></span><h1 id="block_price" style="display: inline-block"><?php print formatprice($this->product->getPriceCalculate())?><?php print $this->product->_tmp_var_price_ext;?></h1>
            </div>


            <?php if ($this->product->product_url!=""){?>
            <div class="prod_url">
                <a target="_blank" href="<?php print $this->product->product_url;?>"><?php print _JSHOP_READ_MORE?></a>
            </div>
            <?php }?>
            <br />

            <?php if ($this->config->product_show_manufacturer_logo && $this->product->manufacturer_info->name!=""){?>
            <div class="manufacturer_name">
                <?php print _JSHOP_MANUFACTURER;?>: <?php print $this->product->manufacturer_info->name;?>
            </div>
            <?php }?>

            <?php if (count($this->attributes)){?>
            <div class = "jshop_prod_attributes">
                <table class = "jshop">
                <?php foreach($this->attributes as $attribut){?>
                <tr>
                    <td width = "50">
                        <?php print $attribut->attr_name?>:
                    </td>
                    <td>
                        <span id='block_attr_sel_<?php print $attribut->attr_id?>'>
                        <?php print $attribut->selects?>
                        </span>
                    </td>
                </tr>
                <?php }?>
                </table>
            </div>
            <?php }?>

            <?php if (count($this->product->freeattributes)){?>
            <div class="prod_free_attribs">
                <table class = "jshop">
                <?php foreach($this->product->freeattributes as $freeattribut){?>
                <tr>
                    <td class="name" width="80"><?php print $freeattribut->name;?> <?php if ($freeattribut->required){?><span>*</span><?php }?></td>
                    <td class="field"><?php print $freeattribut->input_field;?></td>
                </tr>
                <?php }?>
                </table>
                <?php if ($this->product->freeattribrequire) {?>
                <div class="requiredtext">* <?php print _JSHOP_REQUIRED?></div>
                <?php }?>
            </div>
            <br/>
            <?php }?>

            <?php if ($this->product->product_is_add_price){?>
            <div class="price_prod_qty_list_head"><?php print _JSHOP_PRICE_FOR_QTY?></div>
            <?php foreach($this->product->product_add_prices as $k=>$add_price){?>
                <?php if ($add_price->product_quantity_finish==0) print _JSHOP_FROM; ?>
                    <?php print $add_price->product_quantity_start?> <?php print $this->product->product_add_price_unit?>
                <?php if ($add_price->product_quantity_finish > 0){?>
                <span> - </span>
                <?php } ?>
                <?php if ($add_price->product_quantity_finish > 0){?>
                <div class="qty_to">
                    <?php print $add_price->product_quantity_finish?> <?php print $this->product->product_add_price_unit?>
                </div>
                <?php } ?>
                <div class="qty_price">
                    <span id="pricelist_from_<?php print $add_price->product_quantity_start?>"><?php print formatprice($add_price->price)?><?php print $add_price->ext_price?></span> <span class="per_piece">/ <?php print $this->product->product_add_price_unit?></span>
                </div>
            <?php }?>
            <br/>
            <?php }?>

            <?php if ($this->product->product_old_price > 0){?>
            <div class="old_price">
                <?php print _JSHOP_OLD_PRICE?> <span class="old_price" id="old_price"><?php print formatprice($this->product->product_old_price)?></span>
            </div>
            <?php }?>

            <?php if ($this->product->product_price_default > 0 && $this->config->product_list_show_price_default){?>
                <div class="default_price"><?php print _JSHOP_DEFAULT_PRICE;?>: <span id="pricedefault"><?php print formatprice($this->product->product_price_default)?></span></div>
            <?php }?>

            <?php print $this->product->_tmp_var_bottom_price;?>

            <?php if ($this->config->show_tax_in_product && $this->product->product_tax > 0){?>
                <span class="taxinfo"><?php print productTaxInfo($this->product->product_tax);?></span>
            <?php }?>
            <?php if ($this->config->show_plus_shipping_in_product){?>
                <span class="plusshippinginfo"><?php print sprintf(_JSHOP_PLUS_SHIPPING, $this->shippinginfo);?></span>
            <?php }?>
            <?php if ($this->product->delivery_time != ''){?>
                <div class="deliverytime"><?php print _JSHOP_DELIVERY_TIME?>: <?php print $this->product->delivery_time?></div>
            <?php }?>
            <?php if ($this->config->product_show_weight && $this->product->product_weight > 0){?>
                <div class="productweight"><?php print _JSHOP_WEIGHT?>: <span id="block_weight"><?php print formatweight($this->product->getWeight())?></span></div>
            <?php }?>

            <?php if ($this->product->product_basic_price_show){?>
                <div class="prod_base_price"><?php print _JSHOP_BASIC_PRICE?>: <span id="block_basic_price"><?php print formatprice($this->product->product_basic_price_calculate)?></span> / <?php print $this->product->product_basic_price_unit_name;?></div>
            <?php }?>

            <?php if (is_array($this->product->extra_field)){?>
                <div class="extra_fields">
                <?php $extra_field_group = "";
                foreach($this->product->extra_field as $extra_field){
                    if ($extra_field_group!=$extra_field['groupname']){
                        $extra_field_group = $extra_field['groupname'];
                    ?>
                    <div class='extra_fields_group'><?php print $extra_field_group?></div>
                    <?php }?>
                    <div><?php print $extra_field['name'];?>: <?php print $extra_field['value'];?></div>
                <?php }?>
                </div>
            <?php }?>

            <?php if ($this->product->vendor_info){?>
                <div class="vendorinfo">
                    <?php print _JSHOP_VENDOR?>: <?php print $this->product->vendor_info->shop_name?> (<?php print $this->product->vendor_info->l_name." ".$this->product->vendor_info->f_name;?>),
                    (
                    <?php if ($this->config->product_show_vendor_detail){?><a href="<?php print $this->product->vendor_info->urlinfo?>"><?php print _JSHOP_ABOUT_VENDOR?></a>,<?php }?>
                    <a href="<?php print $this->product->vendor_info->urllistproducts?>"><?php print _JSHOP_VIEW_OTHER_VENDOR_PRODUCTS?></a> )
                </div>
            <?php }?>

            <?php if (!$this->config->hide_text_product_not_available){ ?>
                <div class = "not_available" id="not_available"><?php print $this->available?></div>
            <?php }?>

            <?php if ($this->config->product_show_qty_stock){?>
                <div class="qty_in_stock"><?php print _JSHOP_QTY_IN_STOCK?>: <span id="product_qty"><?php print sprintQtyInStock($this->product->qty_in_stock);?></span></div>
            <?php }?>
        </div>
        <?php if (!$this->hide_buy && $this->product->_display_price) { ?>
            <?php print $this->_tmp_product_html_before_buttons;?>
                <div class = "buttons pull-right">

                    <div class="pull-left"><span class="prod_qty"><?php print _JSHOP_QUANTITY?>:&nbsp;</span></div>
                    <div class="btn-group pull-left">
                        <input class="input-mini" type = "text" name = "quantity" id = "quantity" onkeyup="reloadPrices();" value = "<?php print $this->default_count_product?>" /><?php print $this->_tmp_qty_unit;?>
                    </div>
                    <div class="btn-group pull-right">
                        <input type = "submit" class = "btn btn-large btn-success" value = "<?php print _JSHOP_ADD_TO_CART?>" onclick="jQuery('#to').val('cart');" />
                        <?php if ($this->enable_wishlist){?>
                            <input type = "submit" class = "btn" value = "<?php print _JSHOP_ADD_TO_WISHLIST?>" onclick="jQuery('#to').val('wishlist');" />
                        <?php }?>
                    </div>
                    <?php print $this->_tmp_product_html_buttons;?>
                </div>
            <?php print $this->_tmp_product_html_after_buttons;?>
        <?php }?>
    </div>

    <input type="hidden" name="to" id='to' value="cart" />
    <input type = "hidden" name = "product_id" id = "product_id" value = "<?php print $this->product->product_id?>" />
    <input type = "hidden" name = "category_id" id = "category_id" value = "<?php print $this->category_id?>" />
</div>
</form>
<?php

if (count ($this->demofiles)){?>
<div class="list_product_demo">
<table>
    <?php foreach($this->demofiles as $demo){?>
    <tr>
        <td class="descr"><?php print $demo->demo_descr?></td>            
        <?php if ($this->config->demo_type == 1) { ?>
            <td class="download"><a target="_blank" href="<?php print $this->config->demo_product_live_path."/".$demo->demo;?>" onClick="popupWin = window.open('<?php print SEFLink("index.php?option=com_jshopping&controller=product&task=showmedia&media_id=".$demo->id);?>', 'video', 'width=<?php print $this->config->video_product_width;?>,height=<?php print $this->config->video_product_height;?>,top=0,resizable=no,location=no'); popupWin.focus(); return false;"><img src = "<?php print $this->config->live_path.'images/play.gif'; ?>" alt = "play" title = "play"/></a></td>
        <?php } else { ?>
            <td class="download"><a target="_blank" href="<?php print $this->config->demo_product_live_path."/".$demo->demo;?>"><?php print _JSHOP_DOWNLOAD;?></a></td>
        <?php }?>
    </tr>
    <?php }?>
</table>
</div>
<?php } ?>

<?php if ($this->config->product_show_button_back){?>
<br/>
<input type="button" class = "button" value="<?php print _JSHOP_BACK;?>" onclick="<?php print $this->product->button_back_js_click;?>" />
<?php }?>
<?php
//    print $this->_tmp_product_html_before_related;
//    include(dirname(__FILE__)."/related.php");
//    print $this->_tmp_product_html_before_review;
//    include(dirname(__FILE__)."/review.php");
?>
<?php print $this->_tmp_product_html_end;?>
</div>