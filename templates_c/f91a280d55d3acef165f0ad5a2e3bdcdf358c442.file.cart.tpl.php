<?php /* Smarty version Smarty-3.1.21-dev, created on 2023-03-30 05:48:06
         compiled from ".\templates\cart.tpl" */ ?>
<?php /*%%SmartyHeaderCode:13777660886425850621bd91-09724487%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'f91a280d55d3acef165f0ad5a2e3bdcdf358c442' => 
    array (
      0 => '.\\templates\\cart.tpl',
      1 => 1678806083,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '13777660886425850621bd91-09724487',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'carttable' => 0,
    'subtotal' => 0,
    'shipping' => 0,
    'tax' => 0,
    'grandtotal' => 0,
    'order_id' => 0,
    'customer_id' => 0,
    'taxrate' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.21-dev',
  'unifunc' => 'content_64258506235b66_40126109',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_64258506235b66_40126109')) {function content_64258506235b66_40126109($_smarty_tpl) {?>

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
                            <h1 class="h2 text-uppercase mb-0">Cart</h1>
                        </div>
                        <div class="col-lg-6 text-lg-end">
                            <nav aria-label="breadcrumb">
                                <ol class="breadcrumb justify-content-lg-end mb-0 px-0 bg-light">
                                    <li class="breadcrumb-item"><a class="text-dark" href="index.php">Home</a></li>
                                    <li class="breadcrumb-item active" aria-current="page">Cart</li>
                                </ol>
                            </nav>
                        </div>
                    </div>
                </div>
            </section>
            <section class="py-5">
                <h2 class="h5 text-uppercase mb-4">Shopping cart</h2>
                <div class="row">
                    <div class="col-lg-8 mb-4 mb-lg-0">
                        <!-- CART TABLE-->
                        <div class="table-responsive mb-4">
                            <?php echo $_smarty_tpl->tpl_vars['carttable']->value;?>

                            <hr>
                                Total: <?php echo $_smarty_tpl->tpl_vars['subtotal']->value;?>

                        </div>
                        <!-- CART NAV-->
                        <div class="bg-light px-4 py-3">
                            <div class="row align-items-center text-center">
                                <div class="col-md-6 mb-3 mb-md-0 text-md-start"><a
                                        class="btn btn-link p-0 text-dark btn-sm" href="shop.php"><i
                                            class="fas fa-long-arrow-alt-left me-2"> </i>Continue shopping</a></div>
                                <div class="col-md-6 text-md-end"><a class="btn btn-outline-dark btn-sm"
                                        href="checkout.php">Proceed to checkout<i
                                            class="fas fa-long-arrow-alt-right ms-2"></i></a></div>
                            </div>
                        </div>
                    </div>
                    <!-- ORDER TOTAL-->
                    <div class="col-lg-4">
                        <div class="card border-0 rounded-0 p-lg-4 bg-light">
                            <div class="card-body">
                                <h5 class="text-uppercase mb-4">Cart total</h5>
                                <ul class="list-unstyled mb-0">
                                    <li class="d-flex align-items-center justify-content-between"><strong
                                        class="text-uppercase small font-weight-bold">Subtotal</strong><span
                                        class="text-muted small">$<?php echo $_smarty_tpl->tpl_vars['subtotal']->value;?>
</span></li>
                                    <li class="d-flex align-items-center justify-content-between"><strong
                                        class="text-uppercase small font-weight-bold">Shipping</strong><span
                                        class="text-muted small">$<?php echo $_smarty_tpl->tpl_vars['shipping']->value;?>
</span></li>
                                    <li class="d-flex align-items-center justify-content-between"><strong
                                        class="text-uppercase small font-weight-bold">Tax</strong><span
                                        class="text-muted small">$<?php echo $_smarty_tpl->tpl_vars['tax']->value;?>
</span></li>     
                                    <li class="border-bottom my-2"></li>
                                    <li class="d-flex align-items-center justify-content-between mb-4"><strong
                                            class="text-uppercase small font-weight-bold">Total</strong><span>$<?php echo $_smarty_tpl->tpl_vars['grandtotal']->value;?>
</span>
                                    </li>
                                    <li>
                                        
<form target="paypal" action="https://www.paypal.com/cgi-bin/webscr"
                                            method="post">
                                            <input type="hidden" name="cmd" value="_cart">
                                            <input type="hidden" name="business" value="rick@vivaldi2000.com">
                                            <input type="hidden" name="lc" value="US">
                                            <input type="hidden" name="item_name" value="<?php echo $_smarty_tpl->tpl_vars['order_id']->value;?>
">
                                            <input type="hidden" name="item_number" value="<?php echo $_smarty_tpl->tpl_vars['customer_id']->value;?>
">
                                            <input type="hidden" name="amount" value="<?php echo $_smarty_tpl->tpl_vars['subtotal']->value;?>
">
                                            <input type="hidden" name="currency_code" value="USD">
                                            <input type="hidden" name="button_subtype" value="products">
                                            <input type="hidden" name="tax_rate" value="<?php echo $_smarty_tpl->tpl_vars['taxrate']->value;?>
">
                                            <input type="hidden" name="shipping" value="<?php echo $_smarty_tpl->tpl_vars['shipping']->value;?>
">
                                            <input type="hidden" name="add" value="1">
                                            <input type="hidden" name="bn"
                                                value="PP-ShopCartBF:btn_cart_LG.gif:NonHostedGuest">
                                            <input type="image" src="https://www.paypal.com/en_US/i/btn/btn_cart_LG.gif"
                                                border="0" name="submit"
                                                alt="PayPal - The safer, easier way to pay online!">
                                            <img alt="" border="0" src="https://www.paypal.com/en_US/i/scr/pixel.gif"
                                                width="1" height="1">
                                        </form>


  

    

                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </div>
        <?php echo $_smarty_tpl->getSubTemplate ("footer.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array(), 0);?>

    </div>
</body>

</html>

  
<?php }} ?>
