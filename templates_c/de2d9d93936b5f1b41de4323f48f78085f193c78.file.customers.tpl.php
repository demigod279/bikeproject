<?php /* Smarty version Smarty-3.1.21-dev, created on 2023-04-19 07:04:57
         compiled from ".\templates\customers.tpl" */ ?>
<?php /*%%SmartyHeaderCode:1208461890643ff509affc98-01286302%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'de2d9d93936b5f1b41de4323f48f78085f193c78' => 
    array (
      0 => '.\\templates\\customers.tpl',
      1 => 1678972772,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '1208461890643ff509affc98-01286302',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'customers' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.21-dev',
  'unifunc' => 'content_643ff509b16f86_20255582',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_643ff509b16f86_20255582')) {function content_643ff509b16f86_20255582($_smarty_tpl) {?>

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
                            <h1 class="h2 text-uppercase mb-0">Customers</h1>
                        </div>
                        <div class="col-lg-6 text-lg-end">
                            <nav aria-label="breadcrumb">
                                <ol class="breadcrumb justify-content-lg-end mb-0 px-0 bg-light">
                                    <li class="breadcrumb-item"><a class="text-dark" href="index.php">Home</a></li>
                                    <li class="breadcrumb-item active" aria-current="page">Customers</li>
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
                        <th scope="col">First Name</th>
                        <th scope="col">Last Name</th>
                        <th scope="col">Phone</th>
                        <th scope="col">Email</th>
                        <th scope="col">Address</th>
                        <th scope="col">City</th>
                        <th scope="col">State</th>
                        <th scope="col">Zip Code</th>
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
