<?php 
displaySubmenuOptions();
$rows = $this->rows; $count = count ($rows); $i = 0;
?>
<form action = "index.php?option=com_jshopping&controller=productfields" method = "post" name = "adminForm">
<table class = "adminlist">
<thead>
  <tr>
    <th class = "title" width  = "10">
      #
    </th>
    <th width = "20">
	  <input type="checkbox" name="toggle" value="" onClick="checkAll(<?php echo $count;?>);" />
    </th>
    <th width = "200" align = "left">
      <?php echo _JSHOP_TITLE; ?>
    </th>
    <th align = "left">
      <?php echo _JSHOP_TYPE; ?>
    </th>
    <th align = "left">
      <?php echo _JSHOP_OPTIONS; ?>
    </th>
    <th align = "left">
      <?php echo _JSHOP_CATEGORIES; ?>
    </th>
    <th align = "left">
      <?php echo _JSHOP_GROUP; ?>
    </th>
    <th colspan = "3" width = "40">
      <?php echo _JSHOP_ORDERING; ?>
      <a class="saveorder" href="javascript:saveorder(<?php echo ($count-1);?>, 'saveorder')" title="Save Order"></a>
    </th>
    <th width = "50">
        <?php echo _JSHOP_EDIT; ?>
    </th>
    <th width = "40">
        <?php echo _JSHOP_ID; ?>
    </th>
  </tr>
</thead>
<?php
 foreach ($rows as $row){
 ?>
  <tr class = "row<?php echo $i % 2;?>">
   <td>
     <?php echo $i + 1;?>
   </td>
   <td>
     <input type = "checkbox" onclick = "isChecked(this.checked)" name = "cid[]" id = "cb<?php echo $i;?>" value = "<?php echo $row->id?>" />
   </td>
   <td>
     <?php if (!$row->count_option && $row->type==0) {?><img src="components/com_jshopping/images/icon-16-denyinactive.png" alt="" /><?php }?>
     <a href = "index.php?option=com_jshopping&controller=productfields&task=edit&id=<?php echo $row->id; ?>"><?php echo $row->name;?></a>
   </td>
   <td>
     <?php print $this->types[$row->type];?>
   </td>
   <td>
    <?php if ($row->type==0){?>
     <a href = "index.php?option=com_jshopping&controller=productfieldvalues&field_id=<?php echo $row->id?>"><?php echo _JSHOP_OPTIONS?></a>
     (<?php if (is_array($this->vals[$row->id])) echo implode(", ", $this->vals[$row->id]);?>)
     <?php }else{?>
        -
     <?php }?>
   </td>
   <td>
    <?php print $row->printcat;?>        
   </td>
   <td>
    <?php print $row->groupname;?>
   </td>
   <td align = "right" width = "20">
    <?php
        if ($i != 0) echo '<a href = "index.php?option=com_jshopping&controller=productfields&task=order&id='.$row->id.'&move=-1"><img alt="'._JSHOP_UP.'" src="components/com_jshopping/images/uparrow.png"/></a>';
    ?>
   </td>
   <td align = "left" width = "20">
    <?php
        if ($i != $count - 1) echo '<a href = "index.php?option=com_jshopping&controller=productfields&task=order&id='.$row->id.'&move=1"><img alt="'._JSHOP_DOWN.'" src="components/com_jshopping/images/downarrow.png"/></a>';
    ?>
   </td>
   <td align = "center" width = "10">
    <input type="text" name="order[]" id = "ord<?php echo $row->id;?>"  size="5" value="<?php echo $row->ordering; ?>" <?php echo $disabled ?> class="text_area" style="text-align: center" />    
   </td>
   <td align="center">
        <a href='index.php?option=com_jshopping&controller=productfields&task=edit&id=<?php print $row->id;?>'><img src='components/com_jshopping/images/icon-16-edit.png'></a>
   </td>
   <td align="center">
    <?php print $row->id;?>
   </td>
  </tr>
 <?php
 $i++;
 }
?>
</table>

<input type = "hidden" name = "task" value = "" />
<input type = "hidden" name = "hidemainmenu" value = "0" />
<input type = "hidden" name = "boxchecked" value = "0" />
</form>