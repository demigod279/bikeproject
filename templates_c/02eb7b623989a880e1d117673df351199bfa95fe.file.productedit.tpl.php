<?php /* Smarty version Smarty-3.1.21-dev, created on 2023-04-19 06:53:26
         compiled from ".\templates\productedit.tpl" */ ?>
<?php /*%%SmartyHeaderCode:1481061906643ff256ca0a10-46280565%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '02eb7b623989a880e1d117673df351199bfa95fe' => 
    array (
      0 => '.\\templates\\productedit.tpl',
      1 => 1681910599,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '1481061906643ff256ca0a10-46280565',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'product_id' => 0,
    'product_name' => 0,
    'model_year' => 0,
    'category_id' => 0,
    'brand_id' => 0,
    'list_price' => 0,
    'description' => 0,
    'sku' => 0,
    'tags' => 0,
    'stock' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.21-dev',
  'unifunc' => 'content_643ff256cba5c9_77681638',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_643ff256cba5c9_77681638')) {function content_643ff256cba5c9_77681638($_smarty_tpl) {?><!DOCTYPE html>
<html>

<?php echo $_smarty_tpl->getSubTemplate ("head.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array(), 0);?>


<body>
    <div class="page-holder">
        <!-- navbar-->
        <?php echo $_smarty_tpl->getSubTemplate ("header.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array(), 0);?>

        <!--  Modal -->

        <div class="container">


            <form action="productedit.php?product_id=<?php echo $_smarty_tpl->tpl_vars['product_id']->value;?>
" method="POST">
                <div class="row gy-3">
                    <div class="col-lg-6">
                        <label class="form-label text-sm text-uppercase" for="firstName">Product name
                        </label>
                        <?php echo $_smarty_tpl->tpl_vars['product_name']->value;?>

                    </div>
                    <div class="col-lg-6">
                        <label class="form-label text-sm text-uppercase" for="phone">Model year
                        </label>
                        <?php echo $_smarty_tpl->tpl_vars['model_year']->value;?>

                    </div>
                    <div class="col-lg-6">
                        <label class="form-label text-sm text-uppercase" for="email">Category name
                        </label>
                        <?php echo $_smarty_tpl->tpl_vars['category_id']->value;?>

                    </div>
                    <div class="col-lg-6">
                        <label class="form-label text-sm text-uppercase" for="lastName">Brand name
                        </label>
                        <?php echo $_smarty_tpl->tpl_vars['brand_id']->value;?>

                    </div>
                    <div class="col-lg-6 form-group">
                        <label class="form-label text-sm text-uppercase" for="country">List price</label>
                        <?php echo $_smarty_tpl->tpl_vars['list_price']->value;?>

                    </div>
                    <div class="col-lg-12">
                        <label class="form-label text-sm text-uppercase" for="address">Description
                        </label>
                        <?php echo $_smarty_tpl->tpl_vars['description']->value;?>

                    </div>
                    <div class="col-lg-12">
                        <label class="form-label text-sm text-uppercase" for="addressalt">Sku
                        </label>
                        <?php echo $_smarty_tpl->tpl_vars['sku']->value;?>

                    </div>
                    <div class="col-lg-6">
                        <label class="form-label text-sm text-uppercase" for="city">Tags </label>
                        <?php echo $_smarty_tpl->tpl_vars['tags']->value;?>

                    </div>

                    <input type="hidden" value="<?php echo $_smarty_tpl->tpl_vars['product_id']->value;?>
" id="product_id" name="product_id" />



                    <div class="text-center">
                        <button type="submit" value="Save" id="save" name="save" class="btn btn-primary">Save
                            Changes</button>    

                        <a class="btn btn-secondary" href="productedit.php?remove=true&product_id=<?php echo $_smarty_tpl->tpl_vars['product_id']->value;?>
"
                            role="button">Remove
                        </a>
                    </div>



                </div>

            </form>

            <br>
            <table id="example" class="table table-striped table-bordered datatable">
                <thead>
                    <tr>
                        <th scope="col">edit</th>
                        <th scope="col">Store Name</th>
                        <th scope="col">Quantity</th>

                    </tr>
                </thead>
                <tbody>

                    <?php echo $_smarty_tpl->tpl_vars['stock']->value;?>


                </tbody>
            </table>
            <br><br>



        </div>


        <?php echo $_smarty_tpl->getSubTemplate ("footer.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array(), 0);?>

    </div>
</body>


</html><?php }} ?>
