<?php /* Smarty version Smarty-3.1.21-dev, created on 2023-04-19 07:05:03
         compiled from ".\templates\products.tpl" */ ?>
<?php /*%%SmartyHeaderCode:397244573643ff50f989c79-47851992%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '76bd22310f071ecf683ec618c117b1a68f0c92fe' => 
    array (
      0 => '.\\templates\\products.tpl',
      1 => 1679923357,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '397244573643ff50f989c79-47851992',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'customers' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.21-dev',
  'unifunc' => 'content_643ff50f9a0914_63523151',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_643ff50f9a0914_63523151')) {function content_643ff50f9a0914_63523151($_smarty_tpl) {?>

<!DOCTYPE html>
<html>
<?php echo $_smarty_tpl->getSubTemplate ("head.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array(), 0);?>


<body>
    <div class="page-holder">
        <!-- navbar-->
        <?php echo $_smarty_tpl->getSubTemplate ("header.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array(), 0);?>

        <!--  Modal -->
        <div class="container">
            <!-- HERO SECTION-->
            <section class="py-5 bg-light">
                <div class="container">
                    <div class="row px-4 px-lg-5 py-lg-4 align-items-center">
                        <div class="col-lg-6">
                            <h1 class="h2 text-uppercase mb-0">Products</h1>
                        </div>
                        <div class="col-lg-6 text-lg-end">
                            <nav aria-label="breadcrumb">
                                <ol class="breadcrumb justify-content-lg-end mb-0 px-0 bg-light">
                                    <li class="breadcrumb-item"><a class="text-dark" href="index.php">Home</a></li>
                                    <li class="breadcrumb-item active" aria-current="page">Products</li>
                                </ol>
                            </nav>
                        </div>
                    </div>
                </div>
            </section>


            <br>
            <table id="example" class="table table-striped table-bordered datatable">
                <thead>
                    <tr>
                        <th scope="col"></th>
                        <th scope="col">Product name</th>
                        <th scope="col">Brand name</th>
                        <th scope="col">Category name</th>
                        <th scope="col">Model year</th>
                        <th scope="col">List price</th>
                        <th scope="col">Description</th>
                        <th scope="col">Sku</th>
                        <th scope="col">Tags</th>
                    </tr>
                </thead>
                <tbody>

                    <?php echo $_smarty_tpl->tpl_vars['customers']->value;?>


                </tbody>
            </table>
            <br><br>



        </div>
        <?php echo $_smarty_tpl->getSubTemplate ("footer.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array(), 0);?>

    </div>
</body>

</html>

  <?php }} ?>
