<?php /* Smarty version Smarty-3.1.21-dev, created on 2023-04-19 07:04:50
         compiled from ".\templates\categoriesedit.tpl" */ ?>
<?php /*%%SmartyHeaderCode:1260777899643ff5023cdc93-70235225%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '28d3aebf6ed71471070864dea62f757f8f974ce2' => 
    array (
      0 => '.\\templates\\categoriesedit.tpl',
      1 => 1681912452,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '1260777899643ff5023cdc93-70235225',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'category_id' => 0,
    'category_name' => 0,
    'image' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.21-dev',
  'unifunc' => 'content_643ff5023e5e85_23930796',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_643ff5023e5e85_23930796')) {function content_643ff5023e5e85_23930796($_smarty_tpl) {?><!DOCTYPE html>
<html>

<?php echo $_smarty_tpl->getSubTemplate ("head.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array(), 0);?>


<body>
    <div class="page-holder">
        <!-- navbar-->
        <?php echo $_smarty_tpl->getSubTemplate ("header.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array(), 0);?>

        <!--  Modal -->

        <div class="container">


        <form action="categoriesedit.php?category_id=<?php echo $_smarty_tpl->tpl_vars['category_id']->value;?>
" method="POST">
        <div class="row gy-3">
            <div class="col-lg-6">
                <label class="form-label text-sm text-uppercase" for="firstName">category_name
                </label>
                <?php echo $_smarty_tpl->tpl_vars['category_name']->value;?>

            </div>
            <div class="col-lg-6">
                <label class="form-label text-sm text-uppercase" for="lastName">image
                </label>
                <?php echo $_smarty_tpl->tpl_vars['image']->value;?>

            </div>
            
            
<input type="hidden" value="<?php echo $_smarty_tpl->tpl_vars['category_id']->value;?>
" id="category_id" name="category_id" />



<div class="text-center">
<button type="submit" value="Save" id="save" name="save"
class="btn btn-primary">Save Changes</button>
<a class="btn btn-secondary"
href="categoriesedit.php?remove=true&category_id=<?php echo $_smarty_tpl->tpl_vars['category_id']->value;?>
"
role="button">Remove
</a>
</div>



        </div>
        
    </form>



        </div>


        <?php echo $_smarty_tpl->getSubTemplate ("footer.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array(), 0);?>

    </div>
</body>


</html>

    
<?php }} ?>
