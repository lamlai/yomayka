<?php
	defined('_JEXEC') or die();
	echo $pane->startPanel(_JSHOP_FILES, 'product_files');
?>   
   <div class="col100">
    <table class="admintable" >
        <?php 
        foreach ($lists['files'] as $file){
            JFilterOutput::objectHTMLSafe( $file, ENT_QUOTES);
        ?> 
        <tr class="rows_file_prod_<?php print $file->id?>">
            <td class="key" style="width:250px;"><?php print _JSHOP_DEMO_FILE?></td>
            <td id='product_demo_<?php print $file->id?>'>
            <?php if ($file->demo){?>
                <a target="_blank" href="<?php print $jshopConfig->demo_product_live_path."/".$file->demo?>"><?php print $file->demo?></a>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <a href="#" onclick="if (confirm('<?php print _JSHOP_DELETE;?>')) deleteFileProduct('<?php echo $file->id?>','demo');return false;"><img src="components/com_jshopping/images/publish_r.png"> <?php print _JSHOP_DELETE;?></a>
            <?php } ?>
            </td>
        </tr>
        <tr class="rows_file_prod_<?php print $file->id?>">
           <td class="key">
             <?php echo _JSHOP_DESCRIPTION_DEMO_FILE;?>
           </td>
           <td>
             <input type = "text" size="100" name = "product_demo_descr[<?php print $file->id;?>]" value = "<?php print $file->demo_descr;?>"/>
           </td>
         </tr>
        <tr class="rows_file_prod_<?php print $file->id?>">
            <td class="key"><?php print _JSHOP_FILE_SALE?></td>
            <td id='product_file_<?php print $file->id?>'>
            <?php if ($file->file){?>
                <a target="_blank" href="index.php?option=com_jshopping&controller=products&task=getfilesale&id=<?php print $file->id?>">
                    <?php print $file->file?>
                </a>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <a href="#" onclick="if (confirm('<?php print _JSHOP_DELETE;?>')) deleteFileProduct('<?php echo $file->id?>','file');return false;"><img src="components/com_jshopping/images/publish_r.png"> <?php print _JSHOP_DELETE;?></a>
            <?php } ?>
            </td>
        </tr>
        <tr class="rows_file_prod_<?php print $file->id?>">
           <td class="key">
             <?php echo _JSHOP_DESCRIPTION_FILE_SALE;?>
           </td>
           <td>
             <input type = "text" size="100" name = "product_file_descr[<?php print $file->id;?>]" value = "<?php print $file->file_descr;?>" />
           </td>
        </tr>
        <tr class="rows_file_prod_<?php print $file->id?>">
           <td class="key">
             <?php echo _JSHOP_ORDERING;?>
           </td>
           <td>
             <input type = "text" size="25" name = "product_file_sort[<?php print $file->id;?>]" value = "<?php print $file->ordering;?>" />
           </td>
        </tr>
        <tr class="rows_file_prod_<?php print $file->id?>">
            <td style="height:5px;font-size:1px;" colspan="2"><hr/></td>
        </tr>
        <?php } ?>                
        
        <?php 
        $sort = count($lists['files']);
        for ($i=0; $i<$jshopConfig->product_file_upload_count; $i++){?>
        <tr>
            <td class="key" style="width:250px;"><?php print _JSHOP_DEMO_FILE?></td>
            <td>
                <?php if ($jshopConfig->product_file_upload_via_ftp!=1){?>
                <input type="file" name="product_demo_file_<?php print $i;?>" />
                <?php }?>
                <?php if ($jshopConfig->product_file_upload_via_ftp){?>
                <div style="padding-top:3px;"><input size="34" type="text" name="product_demo_file_name_<?php print $i;?>" title="<?php print _JSHOP_UPLOAD_FILE_VIA_FTP?>" /></div>
                <?php }?>
            </td>
        </tr>
        <tr>
           <td class="key">
             <?php echo _JSHOP_DESCRIPTION_DEMO_FILE;?>
           </td>
           <td>
             <input type="text" size="100" name="product_demo_descr_<?php print $i;?>" value=""/>
           </td>
         </tr>
        <tr>
            <td class="key"><?php print _JSHOP_FILE_SALE?></td>
            <td>
                <?php if ($jshopConfig->product_file_upload_via_ftp!=1){?>
                <input type="file" name="product_file_<?php print $i;?>" />
                <?php }?>
                <?php if ($jshopConfig->product_file_upload_via_ftp){?>
                <div style="padding-top:3px;"><input size="34" type="text" name="product_file_name_<?php print $i;?>" title="<?php print _JSHOP_UPLOAD_FILE_VIA_FTP?>" /></div>
                <?php }?>
            </td>
        </tr>
        <tr>
           <td class="key">
             <?php echo _JSHOP_DESCRIPTION_FILE_SALE;?>
           </td>
           <td>
             <input type="text" size="100" name="product_file_descr_<?php print $i;?>" value = ""/>
           </td>
        </tr>
        <tr>
           <td class="key">
             <?php echo _JSHOP_ORDERING;?>
           </td>
           <td>
             <input type="text" size="25" name="product_file_sort_<?php print $i;?>" value="<?php print $sort + $i?>" />
           </td>
        </tr>
        <tr>
            <td style="height:5px;font-size:1px;" colspan="2"><hr/></td>
        </tr>
        <?php }?>
        <?php $pkey = 'plugin_template_files'; if ($this->$pkey){ print $this->$pkey;}?>
    </table>
    </div>
    <div class="clr"></div>
    <br/>    
    <br/>
    <div class="helpbox">
        <div class="head"><?php echo _JSHOP_ABOUT_UPLOAD_FILES;?></div>
        <div class="text">
            <?php print sprintf(_JSHOP_SIZE_FILES_INFO, ini_get("upload_max_filesize"), ini_get("post_max_size"));?>
        </div>
    </div>
<?php
   echo $pane->endPanel();
?>