<?php /* Smarty version Smarty-3.1.21-dev, created on 2023-03-30 05:48:07
         compiled from ".\templates\checkout.tpl" */ ?>
<?php /*%%SmartyHeaderCode:1888757281642585079f5919-16370556%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'a1489e51327453a85f41c60ff4f83c588d252956' => 
    array (
      0 => '.\\templates\\checkout.tpl',
      1 => 1678806371,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '1888757281642585079f5919-16370556',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'first_name' => 0,
    'last_name' => 0,
    'email' => 0,
    'phone' => 0,
    'company_name' => 0,
    'country' => 0,
    'street' => 0,
    'street2' => 0,
    'city' => 0,
    'state' => 0,
    'alt_first_name' => 0,
    'alt_last_name' => 0,
    'alt_phone' => 0,
    'alt_company_name' => 0,
    'shipping_country' => 0,
    'alt_street' => 0,
    'alt_street2' => 0,
    'alt_city' => 0,
    'alt_state' => 0,
    'carttable' => 0,
    'subtotal' => 0,
    'shipping' => 0,
    'tax' => 0,
    'grandtotal' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.21-dev',
  'unifunc' => 'content_64258507a13ad5_49019648',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_64258507a13ad5_49019648')) {function content_64258507a13ad5_49019648($_smarty_tpl) {?><!DOCTYPE html>
<html>

<?php echo $_smarty_tpl->getSubTemplate ("head.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array(), 0);?>


<body><div class="page-holder">
        <!-- navbar-->
        <?php echo $_smarty_tpl->getSubTemplate ("header.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array(), 0);?>

        <!--  Modal -->
<div class="modal fade" id="productView" tabindex="-1">
            <div class="modal-dialog modal-lg modal-dialog-centered">
                <div class="modal-content overflow-hidden border-0">
                    <button class="btn-close p-4 position-absolute top-0 end-0 z-index-20 shadow-0" type="button"
                        data-bs-dismiss="modal" aria-label="Close"></button>
                    <div class="modal-body p-0">
                        <div class="row align-items-stretch">
                            <div class="col-lg-6 p-lg-0"><a
                                    class="glightbox product-view d-block h-100 bg-cover bg-center"
                                    style="background: url(https://d19m59y37dris4.cloudfront.net/boutique/2-0/img/product-5.aff049a7.jpg)"
                                    href="img/product-5.aff049a7.jpg" data-gallery="gallery1"
                                    data-glightbox="Red digital smartwatch"></a><a class="glightbox d-none"
                                    href="img/product-5-alt-1.590676e9.jpg" data-gallery="gallery1"
                                    data-glightbox="Red digital smartwatch"></a><a class="glightbox d-none"
                                    href="img/product-5-alt-2.bfa04461.jpg" data-gallery="gallery1"
                                    data-glightbox="Red digital smartwatch"></a></div>
                            <div class="col-lg-6">
                                <div class="p-4 my-md-4">
                                    <ul class="list-inline mb-2">
                                        <li class="list-inline-item m-0"><i class="fas fa-star small text-warning"></i>
                                        </li>
                                        <li class="list-inline-item m-0 1"><i
                                                class="fas fa-star small text-warning"></i></li>
                                        <li class="list-inline-item m-0 2"><i
                                                class="fas fa-star small text-warning"></i></li>
                                        <li class="list-inline-item m-0 3"><i
                                                class="fas fa-star small text-warning"></i></li>
                                        <li class="list-inline-item m-0 4"><i
                                                class="fas fa-star small text-warning"></i></li>
                                    </ul>
                                    <h2 class="h4">Red digital smartwatch</h2>
                                    <p class="text-muted">$250</p>
                                    <p class="text-sm mb-4">Lorem ipsum dolor sit amet, consectetur adipiscing elit. In
                                        ut ullamcorper leo, eget euismod orci. Cum sociis natoque penatibus et magnis
                                        dis parturient montes nascetur ridiculus mus. Vestibulum ultricies aliquam
                                        convallis.</p>
                                    <div class="row align-items-stretch mb-4 gx-0">
                                        <div class="col-sm-7">
                                            <div
                                                class="border d-flex align-items-center justify-content-between py-1 px-3">
                                                <span
                                                    class="small text-uppercase text-gray mr-4 no-select">Quantity</span>
                                                <div class="quantity">
                                                    <button class="dec-btn p-0"><i
                                                            class="fas fa-caret-left"></i></button>
                                                    <input class="form-control border-0 shadow-0 p-0" type="text"
                                                        value="1">
                                                    <button class="inc-btn p-0"><i
                                                            class="fas fa-caret-right"></i></button>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-5"><a
                                                class="btn btn-dark btn-sm w-100 h-100 d-flex align-items-center justify-content-center px-0"
                                                href="cart.php">Add to cart</a></div>
                                    </div><a class="btn btn-link text-dark text-decoration-none p-0" href="#!"><i
                                            class="far fa-heart me-2"></i>Add to wish list</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="container">
            <!-- HERO SECTION-->
            <section class="py-5 bg-light">
                <div class="container">
                    <div class="row px-4 px-lg-5 py-lg-4 align-items-center">
                        <div class="col-lg-6">
                            <h1 class="h2 text-uppercase mb-0">Checkout</h1>
                        </div>
                        <div class="col-lg-6 text-lg-end">
                            <nav aria-label="breadcrumb">
                                <ol class="breadcrumb justify-content-lg-end mb-0 px-0 bg-light">
                                    <li class="breadcrumb-item"><a class="text-dark" href="index.php">Home</a></li>
                                    <li class="breadcrumb-item"><a class="text-dark" href="cart.php">Cart</a></li>
                                    <li class="breadcrumb-item active" aria-current="page">Checkout</li>
                                </ol>
                            </nav>
                        </div>
                    </div>
                </div>
            </section>
            <section class="py-5">
                <!-- Shipping ADDRESS-->
            <h2 class="h5 text-uppercase mb-4">Shipping details</h2>
            <div class="row">
                <div class="col-lg-8">
                <form action="index.php?confetti=1" method="POST">   
                <!--<form method="POST">-->
                        <div class="row gy-3">
                            <div class="col-lg-6">
                                <label class="form-label text-sm text-uppercase" for="firstName">First name
                                </label>
                                <?php echo $_smarty_tpl->tpl_vars['first_name']->value;?>

                            </div>
                            <div class="col-lg-6">
                                <label class="form-label text-sm text-uppercase" for="lastName">Last name
                                </label>
                                <?php echo $_smarty_tpl->tpl_vars['last_name']->value;?>

                            </div>
                            <div class="col-lg-6">
                                <label class="form-label text-sm text-uppercase" for="email">Email address
                                </label>
                                <?php echo $_smarty_tpl->tpl_vars['email']->value;?>

                            </div>
                            <div class="col-lg-6">
                                <label class="form-label text-sm text-uppercase" for="phone">Phone number
                                </label>
                                <?php echo $_smarty_tpl->tpl_vars['phone']->value;?>

                            </div>
                            <div class="col-lg-6">
                                <label class="form-label text-sm text-uppercase" for="company">Company name
                                    (optional) </label>
                                <?php echo $_smarty_tpl->tpl_vars['company_name']->value;?>

                            </div>
                            <div class="col-lg-6 form-group">
                                <label class="form-label text-sm text-uppercase" for="country">Country</label>
                                <?php echo $_smarty_tpl->tpl_vars['country']->value;?>

                            </div>
                            <div class="col-lg-12">
                                <label class="form-label text-sm text-uppercase" for="address">Address line 1
                                </label>
                                <?php echo $_smarty_tpl->tpl_vars['street']->value;?>

                            </div>
                            <div class="col-lg-12">
                                <label class="form-label text-sm text-uppercase" for="addressalt">Address line 2
                                </label>
                                <?php echo $_smarty_tpl->tpl_vars['street2']->value;?>

                            </div>
                            <div class="col-lg-6">
                                <label class="form-label text-sm text-uppercase" for="city">Town/City </label>
                                <?php echo $_smarty_tpl->tpl_vars['city']->value;?>

                            </div>
                            <div class="col-lg-6">
                                <label class="form-label text-sm text-uppercase" for="state">State/County
                                </label>
                                <?php echo $_smarty_tpl->tpl_vars['state']->value;?>

                            </div>
                            <div class="col-lg-6">
                                <button class="btn btn-link text-dark p-0 shadow-0" type="button"
                                    data-bs-toggle="collapse" data-bs-target="#alternateAddress" >
                                    <div class="form-check">
                                    <input class="form-check-input" id="alternateAddressCheckbox"
                                    type="checkbox">
                                        <label class="form-check-label" for="alternateAddressCheckbox">Alternate
                                            Shipping address</label>
                                    </div>
                                </button>
                            </div>
                            <div class="collapse" id="alternateAddress">
                                <div class="row gy-3">
                                    <div class="col-12 mt-4">
                                        <h2 class="h4 text-uppercase mb-4">Alternative Shipping details</h2>
                                    </div>
                                    <div class="col-lg-6">
                                <label class="form-label text-sm text-uppercase" for="firstName">First name
                                </label>
                                <?php echo $_smarty_tpl->tpl_vars['alt_first_name']->value;?>

                            </div>
                            <div class="col-lg-6">
                                <label class="form-label text-sm text-uppercase" for="lastName">Last name
                                </label>
                                <?php echo $_smarty_tpl->tpl_vars['alt_last_name']->value;?>

                            </div>
                            <div class="col-lg-6">
                                <label class="form-label text-sm text-uppercase" for="email">Email address
                                </label>
                                <?php echo $_smarty_tpl->tpl_vars['email']->value;?>

                            </div>
                            <div class="col-lg-6">
                                <label class="form-label text-sm text-uppercase" for="phone">Phone number
                                </label>
                                <?php echo $_smarty_tpl->tpl_vars['alt_phone']->value;?>

                            </div>
                            <div class="col-lg-6">
                                <label class="form-label text-sm text-uppercase" for="company">Company name
                                    (optional) </label>
                                <?php echo $_smarty_tpl->tpl_vars['alt_company_name']->value;?>

                            </div>
                            <div class="col-lg-6 form-group">
                                <label class="form-label text-sm text-uppercase" for="country">Country</label>
                                <?php echo $_smarty_tpl->tpl_vars['shipping_country']->value;?>

                            </div>
                            <div class="col-lg-12">
                                <label class="form-label text-sm text-uppercase" for="address">Address line 1
                                </label>
                                <?php echo $_smarty_tpl->tpl_vars['alt_street']->value;?>

                            </div>
                            <div class="col-lg-12">
                                <label class="form-label text-sm text-uppercase" for="addressalt">Address line 2
                                </label>
                                <?php echo $_smarty_tpl->tpl_vars['alt_street2']->value;?>

                            </div>
                            <div class="col-lg-6">
                                <label class="form-label text-sm text-uppercase" for="city">Town/City </label>
                                <?php echo $_smarty_tpl->tpl_vars['alt_city']->value;?>

                            </div>
                            <div class="col-lg-6">
                                <label class="form-label text-sm text-uppercase" for="state">State/County
                                </label>
                                <?php echo $_smarty_tpl->tpl_vars['alt_state']->value;?>

                            </div>
                                </div>
                            </div>
                            
                            </div>
                            <div class="text-center">
                            <button type="submit" value="Save" id="save" name="save"
                                class="btn btn-primary" onclick="spray()">Place order</button>    
                    
                            
                        </div>
                        </form>
                    </div>
                    
                    
       <!-- ORDER SUMMARY
       <div class="col-lg-4">
       <div class="card border-0 rounded-0 p-lg-4 bg-light">
           <div class="card-body">
               <h5 class="text-uppercase mb-4">Your order</h5>
               <?php echo $_smarty_tpl->tpl_vars['carttable']->value;?>

               <hr>
               Total: <?php echo $_smarty_tpl->tpl_vars['subtotal']->value;?>

           </div>
       </div>
   </div>
-->





                    <!-- ORDER SUMMARY-->
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
